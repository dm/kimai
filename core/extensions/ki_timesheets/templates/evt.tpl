{cycle values="odd,even" reset=true print=false}
          <table>
    
            <tbody>

{section name=row loop=$arr_evt}
{if $arr_evt[row].evt_visible || $arr_evt[row].zeit != "0:00"}
            
                <tr class="{cycle values="odd,even"}" >
                    
                    
                    
                    
                    

                    <td nowrap class="option">
{*                        
                        <a href ="#" onClick="filterSubject('evt',{$arr_evt[row].evt_ID});"><img src='../skins/{$kga.conf.skin}/grfx/filter.png' width='13' height='13' alt='{$kga.lang.filter}' title='{$kga.lang.filter} (ID:{$arr_evt[row].evt_ID})' border='0' /></a>
*}
{if $kga.usr.usr_sts != 2}
                        <a href ="#" onClick="editSubject('evt',{$arr_evt[row].evt_ID});"><img src='../skins/{$kga.conf.skin}/grfx/edit2.gif' width='13' height='13' alt='{$kga.lang.edit}' title='{$kga.lang.edit} (ID:{$arr_evt[row].evt_ID})' border='0' /></a>
{/if}
                        <a href ="#" class="preselect" onClick="ts_ext_preselect('evt',{$arr_evt[row].evt_ID},'{$arr_evt[row].evt_name}',0,0); return false;" id="ps{$arr_evt[row].evt_ID}"><img src='../skins/{$kga.conf.skin}/grfx/preselect_off.png' width='13' height='13' alt='{$kga.lang.select}' title='{$kga.lang.select} (ID:{$arr_evt[row].evt_ID})' border='0' /></a>
                    </td>

                    <td width="100%" class="events" onClick="ts_ext_preselect('evt',{$arr_evt[row].evt_ID},'{$arr_evt[row].evt_name}',0,0); return false;" onmouseover="ChangeColor(this,true);" onmouseout="ChangeColor(this,false);">
                        {if $arr_evt[row].evt_visible != 1}<span style="color:#bbb">{/if}
                        {if $kga.conf.showIDs == 1}<span class="ids">{$arr_evt[row].evt_ID}</span> {/if}{$arr_evt[row].evt_name}
                        {if $arr_evt[row].evt_visible != 1}</span>{/if}
                    </td>

                    <td nowrap class="time">
                        {if $arr_evt[row].evt_visible != 1}<span style="color:#bbb">{/if}
                        {$arr_evt[row].zeit}
                        {if $arr_evt[row].evt_visible != 1}</span>{/if}
                    </td>

                </tr>
            
{/if}
{/section}




{if $arr_evt == '0'}
                <tr>
                    <td colspan='3'>
                        <strong style="color:red">{$kga.lang.noItems}</strong>
                    </td>
                </tr>
{/if}


            </tbody>  
        </table>  