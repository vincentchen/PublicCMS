<#list conditionList as a><#if a?index%3=2>

                </#if><#if "Date"=a.type>${a.type} start${a.name?cap_first}, ${a.type} end${a.name?cap_first}, <#else>${a.type} ${a.name}, </#if></#list>
<#assign orderSize=0/>
<#assign order=false/>
<#list columnList as a><#if a.order><#assign order=true/><#assign orderSize+=1/></#if></#list>
                <#if order><#if orderSize gt 1>String orderField, </#if>String orderType, </#if>Integer pageIndex, Integer pageSize