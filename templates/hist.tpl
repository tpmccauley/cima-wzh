<div class=Cnt>

	<div class=row>
		<div class=col-md-3>
			<strong> Masterclass: </strong>
			<?php echo '<span name="database"> '.$_SESSION["MasterClass"].'</span>'; ?>
		</div>
		<div class=col-md-9></div>
	</div>

	<div class=row>
		<div class=col-md-3>
			<strong> location: </strong>
			<?php echo '<span name="groupNo"> '.$_SESSION["displayLocation"].'</span>'; ?>
		</div>
		<div class=col-md-9></div>
	</div>

	<!-- Histogram container 1 -->
	<div class=container style="display: inline-block;">
		<div class=row style="padding-top: 5%;">
			<div class=col-md-1 align="center">
				<strong>Events / 2GeV</strong>
			</div>
			<div class=col-md-11>
				<canvas id="chart1" width="2000" height="600"
								onmouseup="update_auto(event)"></canvas>
			</div>
		</div>
		<div class=row>
			<div class=col-md-10></div>
			<div class=col-md-2>
				<strong> Mass bin (GeV) </strong>
			</div>
		</div>
	</div>
	<!-- End histogram container 1 -->

	<br>

	<!-- Histogram container 2 -->
	<div class=container style="display: inline-block;">
		<div class=row style="padding-top: 5%;">
			<div class=col-md-1 align="center">
				<strong>Events / 2GeV</strong>
			</div>
			<div class=col-md-11>
				<canvas id="chart2" width="2000" height="600"
								onmouseup="update_auto(event)"></canvas>
			</div>
		</div>
		<div class=row>
			<div class=col-md-10></div>
			<div class=col-md-2>
				<strong> Mass bin (GeV) </strong>
			</div>
		</div>
	</div>
	<!-- End histogram container 2 -->

	<div class=row style="padding-top: 2%;">
		<div class=col-md-1></div>
		<div class=col-md-4 align="center">
			Tip: Remove data from the histogram by holding the ctrl key <br> (the command key for mac users)
		</div>
	</div>
</div>
