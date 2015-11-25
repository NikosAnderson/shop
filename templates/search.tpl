{include file='partials/header.tpl'}

		<div class="row">

			<div class="col-lg-12">

				<h1 class="page-header">Search</h1>

				<form class="form-horizontal" method="GET">
					<div class="input-group">
						<input type="text" name="q" class="form-control" placeholder="Search...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="submit"><span class=" glyphicon glyphicon-search"></span></button>
						</span>
					</div>
				</form>

			</div>

			<div class="col-lg-12">

				<h1 class="page-header">Filters</h1>

				<form class="search form-inline" method="GET">
					<div class="form-group">
						<select id="category" name="category" class="form-control">
							<option value="">Category</option>
						</select>
					</div>

					<div class="form-group">
						<label for="price">Price</label>
						0 € <input id="price" name="price" type="text" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="[0,100]"/> 100 €
					</div>

					<div class="form-group">
						<label class="checkbox-inline">
							<input type="checkbox" id="picture" name="picture" value="1"> Picture
						</label>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span> Search
						</button>
					</div>
				</form>

			</div><!-- /.col-lg-12 -->

			{if $search->count > 0}

			<hr>

			<div class="col-lg-12">
				<h1 class="page-header">{$search->count} search result(s)</h1>
			</div>

			{foreach $search->results as $_product}
			<div class="col-lg-3 col-md-4 col-xs-6 thumb">
				{include file='partials/product-block.tpl'}
			</div>
			{/foreach}

			{/if}

		</div>



{include file='partials/footer.tpl'}