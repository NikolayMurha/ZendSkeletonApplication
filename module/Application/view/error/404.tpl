<h1>A 404 error occurred</h1>
<h2>{$this->message}</h2>


{if isset($this->reason)}
    {if $this->reason == 'error-controller-cannot-dispatch'}
            {assign var="reasonMessage"  value="The requested controller was unable to dispatch the request."}
    {elseif $this->reason == 'error-controller-not-found'}
            {assign var='reasonMessage' value="The requested controller could not be mapped to an existing controller class."}
    {elseif $this->reason == 'error-controller-invalid'}
            {assign var="reasonMessage" value="The requested controller was not dispatchable."}
    {elseif $this->reason == 'error-router-no-match'}
            {assign var="reasonMessage" value="The requested URL could not be matched by routing."}
    {else}
            {assign var="reasonMessage" value="We cannot determine at this time why a 404 was generated."}
    {/if}
{/if}

<p>{$reasonMessage}</p>


{if isset($this->controller)}

    <dl>
        <dt>Controller:</dt>
        <dd>{$this->controller}

    {if isset($this->controller_class)
        && $this->controller_class != $this->controller}
        resolves to ({$this->controller_class})
    {/if}
    </dd>
{/if}

{if isset($this->exception)}

    <h2>Exception:</h2>

    <p><b>{$this->exception->getMessage()}</b></p>

    <h3>Stack trace</h3>

    <pre>
    {$this->exception->getTraceAsString()}
    </pre>

{/if}