// Automatically pause splits
/*

To use this, first add it to your LiveSplit layout as a "Scriptable Auto Splitter".
Then add the text (pause 1.5s) to one or more of your split names, you can write any time specified in seconds.

Make sure you use "Game Time" instead of "Real Time" in LiveSplit otherwise it will not add the pause.

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
		var match = System.Text.RegularExpressions.Regex.Match(timer.CurrentSplit.Name, @"\(pause (\d+\.?\d*)s\)");
		if (match.Success)
		{
			print(match.Groups[1].ToString());
			var group = TimeSpan.FromSeconds(double.Parse(match.Groups[1].ToString(), System.Globalization.CultureInfo.InvariantCulture));
			vars.target = DateTime.Now + group;
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
