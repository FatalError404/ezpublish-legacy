{def $node_tab_index = first_set( $view_parameters.tab, ezpreference( 'admin_navigation_content' ), 'preview' )}
{if or( $node_tab_index|eq( '0' ), $node_tab_index|eq( '1' ) )}
    {set $node_tab_index = 'preview'}
{/if}

{* Preview window *}
<div id="node-tab-preview-content" class="tab-content{if $node_tab_index|ne('preview')} hide{else} selected{/if}">
    {include uri='design:preview.tpl'}
<div class="break"></div>
</div>

{* Details window *}
<div id="node-tab-details-content" class="tab-content{if $node_tab_index|ne('details')} hide{else} selected{/if}">
    {include uri='design:details.tpl'}
<div class="break"></div>
</div>

{* Translations window *}
<div id="node-tab-translations-content" class="tab-content{if $node_tab_index|ne('translations')} hide{else} selected{/if}">
    {include uri='design:translations.tpl'}
<div class="break"></div>
</div>

{* Locations window *}
<div id="node-tab-locations-content" class="tab-content{if $node_tab_index|ne('locations')} hide{else} selected{/if}">
    {include uri='design:locations.tpl'}
<div class="break"></div>
</div>

{* Relations window *}
<div id="node-tab-relations-content" class="tab-content{if $node_tab_index|ne('relations')} hide{else} selected{/if}">
    {include uri='design:relations.tpl'}
<div class="break"></div>
</div>

{* States window *}
<div id="node-tab-states-content" class="tab-content{if $node_tab_index|ne('states')} hide{else} selected{/if}">
    {include uri='design:states.tpl'}
<div class="break"></div>
</div>
