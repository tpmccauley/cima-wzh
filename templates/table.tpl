<form action=DataTable.php method="post">
	<div class=row>
		<div class=col-md-4>
			<div class=container-fluid>
				<div class=row>
					<div class=col-md-1></div>
					<div class=col-md-10><strong> Masterclass: </strong>
						<?php echo
							'<span name="database">'.$_SESSION["MasterClass"].'</span>';
						?>
					</div>
				</div>
				<div class=row>
					<div class=col-md-1></div>
					<div class=col-md-10><strong> Location: </strong>
						<?php echo
							'<span name="database"> '.$_SESSION["displayLocation"].'</span>';
						?>
					</div>
				</div>
				<div class=row>
					<div class=col-md-1></div>
					<div class=col-md-10><strong> Group: </strong>
						<?php echo
							'<span name="groupNo"> '.$_SESSION["groupNo"].'</span>';
							if(isset($_SESSION["backup"])){ echo " as backup";}
						?>
					</div>
					<div class=col-md-8></div>
				</div>
			</div>
		</div>
		<div class=col-md-8>
			<?php
				if(isset($_SESSION["edit"])){
					echo '<button type="submit" id="fedit"';
					if(isset($event)){echo 'disabled="true"';}
					echo 'class="btn btn-default" name="fedit" value="1">
						finish editing
					</button>';
				}
			?>
		</div>
	</div>

	<?php
		/*
		print_r('<br>');
		print_r($freeEvents);
		print_r('<br>');
		*/
	?>

	<!-- Data Entry Panel -->
	<div class="panel-container container-fluid">
		<div class="col-md-3 subpanel" id="eventdata">
			<div class="panelheader">Select Event</div>
				<?php
					/*
					print_r('<br>');
					print_r("event = " + ((string) $event));
					print_r('<br>');
					print_r("idToDsNumber(event) = " + ((string) idToDsNumber($event)));
					print_r('<br>');
					*/
				?>
			<div id="indexSelect" style="border:1px solid transparent;">
				Event index:
				<select id="EvSelOver" name="CustomEvent" onchange="this.form.submit()">
		 			<option id="SelEvent" selected>
						<?php
							if(isset($event)){
								echo idToDsNumber($event)."";
							}
							echo ' </option>';
							if(isset($event)){
								foreach($freeEvents as $freeEvent){
									if ($freeEvent != $event) {
										echo '<option> '.idToDsNumber($freeEvent).'</option>';
									}
								}
							}
						?>
				</select>
			</div><!-- End indexSelect -->
			<div id="eventNumber" style="border:1px solid transparent;">
				Event number:
				<span id="Eventid">
				<?php
					if(isset($event)){
						//echo calcEv($event['id'])."";
						echo idToIndex($event)."";
					}
				?>
				</span>
			</div><!-- End eventNumber -->
		</div>
		<div class="divider"></div>
		<div class="col-md-3 subpanel" id="finaldata">
			<div class="panelheader">Final State</div>
			<div class="selectorRow">
				<div class="selector-2">
					<input type="radio" class="finalSelect"
						 		 onclick="SelectState(this)"
						 		 id="e-nu" name="finalState" value="e_nu" />
					<label for="e-nu">e &nu;</label>
				</div>
				<div class="selector-2">
					<input type="radio" class="finalSelect"
						 		 onclick="SelectState(this)"
						 		 id="mu-nu" name="finalState" value="mu_nu" />
					<label for="mu-nu">&mu; &nu;</label>
				</div>
			</div><!-- End row 1-->

			<div class="selectorRow">
				<div class="selector-2">
					<input type="radio" class="finalSelect"
						 		 onclick="SelectState(this)"
						 		 id="e-e" name="finalState" value="2e" />
					<label for="e-e">e e</label>
				</div>
				<div class="selector-2">
					<input type="radio" class="finalSelect"
						 		 onclick="SelectState(this)"
						 		 id="mu-mu" name="finalState" value="mu_mu" />
					<label for="mu-mu">&mu; &mu;</label>
				</div>
			</div> <!-- End row 2-->

			<div class="selectorRow">
				<div class="selector-2">
					<input type="radio" class="finalSelect"
						 		 onclick="SelectState(this)"
						 		 id="4-e" name="finalState" value="4e" />
					<label for="4-e">4e</label>
				</div>
				<div class="selector-2">
					<input type="radio" class="finalSelect"
						 		 onclick="SelectState(this)"
						 		 id="4-mu" name="finalState" value="4mu" />
					<label for="4-mu">4&mu;</label>
				</div>
			</div> <!-- End row 3-->

			<div class="selectorRow">
				<div class="selector-2">
					<input type="radio" class="finalSelect"
						 		 onclick="SelectState(this)"
						 		 id="2e-2mu" name="finalState" value="2e_2mu" />
					<label for="2e-2mu">2e 2&mu;</label>
				</div>
				<!--<div class="selector-2">
					<input type="radio" class="finalSelect"
						 onclick="SelectState(this)"
						 id="2-gam" name="finalState" value="2gam" />
					<label for="2-gam">2&gamma;</label>
				</div>-->
			</div> <!-- End row 4-->
		</div>

		<div class="divider"></div>
		<div class="col-md-3 subpanel" id="primarydata">
			<div class="panelheader">Primary State</div>
			<div class="selectorRow">
				<div>Charged Particle:</div>
				<div class="selector-3">
					<input type="radio" class="primarySelect"
						 		 onclick="SelectState(this)"
						 		 id="charged" name="primaryState" value="W+" />
					<label for="charged">W+</label>
				</div>
				<div class="selector-3">
					<input type="radio" class="primarySelect"
						 		 onclick="SelectState(this)"
						 		 id="charged" name="primaryState" value="W-" />
					<label for="charged">W-</label>
				</div>
				<div class="selector-3">
					<input type="radio" class="primarySelect"
						 		 onclick="SelectState(this)"
						 		 id="charged" name="primaryState" value="W_pm" />
					<label for="charged">W&#177;</label>
				</div>
			</div> <!-- End row 1-->

			<div class="selectorRow">
				<div class="selector-1">
					<input type="radio" class="primarySelect"
						 		 onclick="SelectState(this)"
						 		 id="neutral" name="primaryState" value="neutral" />
					<label for="neutral">
						Neutral Particle <br />
						(Z, H)
					</label>
				</div>
			</div><!-- End row 2-->

			<div class="selectorRow">
				<div class="selector-1">
					<input type="radio" class="primarySelect"
						 		 onclick="SelectState(this)"
						 		 id="zoo" name="primaryState" value="zoo" />
					<label for="zoo">Zoo</label>
				</div>
			</div><!-- End row 3-->
		</div><!-- End div "primarydata" -->

		<div class="divider"></div>

		<div class="col-md-3 subpanel" id="massandfinish" style="width:20%;">
			<div class="panelheader">Enter Mass</div>
			<span class="massInput" id="massInput"
						style="color:grey; border:1px solid transparent;">
				<!--Mass:-->
				<input type="text" name="massEntry" class="massEntry" id="enterMass"
							 size="3%" disabled="disabled" />
				<label for="enterMass">GeV/c²<label>
			</span></br>
			<span style="display: inline-block; padding-top:5%; padding-bottom:5%;	
									border:1px solid transparent;">
				<button type="submit" disabled="true" id="next" name="fin"
								class="btn btn-primary btn-lg" />
					Next
				</button>
			</span>
		</div>
	</div>
<!-- is this an extra close-div or did I miss one? -->
</div>
<!-- End Data Entry Panel -->

</form>
