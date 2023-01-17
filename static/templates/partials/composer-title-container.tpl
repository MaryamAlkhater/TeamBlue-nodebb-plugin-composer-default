<div class="title-container d-flex">
	{{{ if isTopic }}}
	<div class="category-list-container hidden-sm hidden-xs align-self-center">
		<!-- IMPORT partials/category-selector.tpl -->
	</div>
	{{{ end }}}

	{{{ if showHandleInput }}}
	<div data-component="composer/handle">
		<input class="handle form-control h-100" type="text" tabindex="1" placeholder="[[topic:composer.handle_placeholder]]" value="{handle}" />
	</div>
	{{{ end }}}
	<div data-component="composer/title" class="position-relative" style="min-width:0;">
		{{{ if isTopicOrMain }}}
		<input class="title form-control h-100" type="text" tabindex="1" placeholder="[[topic:composer.title_placeholder]]" value="{topicTitle}"/>
		{{{ else }}}
		<span class="title h-100 text-truncate">{{{ if isEditing }}}[[topic:composer.editing]]{{{ else }}}[[topic:composer.replying_to, "{topicTitle}"]]{{{ end }}}</span>
		{{{ end }}}
		<div id="quick-search-container" class="quick-search-container mt-2 dropdown-menu d-block p-2 hidden">
			<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
			<div class="quick-search-results-container"></div>
		</div>
	</div>

	<div class="draft-icon hidden-xs hidden-sm"></div>

	<div class="display-scheduler hidden-sm hidden-xs{{{ if !canSchedule }}} hidden{{{ end }}}">
		<i class="fa fa-clock-o"></i>
	</div>

	<div class="btn-group action-bar hidden-sm hidden-xs">
		<button class="btn btn-outline-secondary composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i> [[topic:composer.discard]]</button>

		<button class="btn btn-primary composer-submit" data-action="post" tabindex="6" data-text-variant=" [[topic:composer.schedule]]"><i class="fa fa-check"></i> [[topic:composer.submit]]</button>
		{{{ if submitOptions.length }}}
		<button type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<span class="caret"></span>
			<span class="sr-only">[[topic:composer.additional-options]]</span>
		</button>
		<ul class="dropdown-menu">{{{ each submitOptions }}}<li><a class="dropdown-item" href="#" data-action="{./action}">{./text}</a></li>{{{ end }}}</ul>
		{{{ end }}}
	</div>
</div>