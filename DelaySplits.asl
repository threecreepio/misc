// Pause splits using a comparison split
/*

To use this, first add it to your LiveSplit layout as a "Scriptable Auto Splitter".
Then add a comparison split to your split file named "DELAY".

To add a delay to a specific split, just write in how long the delay should be in the comparison row for that split.

Make sure you use "Game Time" instead of "Real Time" in LiveSplit as otherwise it will not add the pause.

Enjoy!
/threecreepio

*/


state("livesplit") {}

isLoading
{
	var v = ((IDictionary<string, object>) vars);
	var splitIndex = v.ContainsKey("currentSplit") ? vars.currentSplit : -1;
	vars.currentSplit = timer.CurrentSplitIndex;

	if (splitIndex == timer.CurrentSplitIndex)
	{
		if (v.ContainsKey("target") && vars.target != null)
		{
			var remains = vars.target - DateTime.Now;
			if (remains.TotalMilliseconds > 0)
			{
				return true;
			}
			vars.target = null;
		}
	}

	// dont apply the split when undoing splits (not that undoing a split after a delay is a good idea..)
	else if (splitIndex < timer.CurrentSplitIndex)
	{
		vars.target = null;
		var hasDelay = timer.CurrentSplit.Comparisons.ContainsKey("DELAY");
		if (hasDelay)
		{
			vars.target = DateTime.Now + (timer.CurrentSplit.Comparisons["DELAY"]).GameTime;
			return true;
		}
	}

	// remove target if we undo a split
	else
	{
		vars.target = null;
	}

	return false;
}