<!DOCTYPE html>
<html class="multi-html">
<head>

 <title>235 - Air cargo tracking result - track-trace</title>

 <meta name="robots" content="noindex"/>
  <link href="http://cloudfront.track-trace.com/assets/application-f024a8bbdb7dff33d80cd118331546fb.css" media="screen" rel="stylesheet" />
 <script src="http://cloudfront.track-trace.com/assets/application-0aa886171d5494fe751abd994af50ef0.js"></script>


</head>
<body class="multi-body">

<div class="canvas">
  <div class="multi-tab-area">

  <div class="tabbable tabs-left jq-multi-tab-area">
    <ul class="nav nav-tabs jq-tabs">
      
      
      <li  class="active" data-id="276"><a href="#l276" data-toggle="tab">Turkish Airlines(TK)</a></li>


      <li class="jq-select-list-tab jq-multi-select-popover" rel="popover" data-trigger="manual" data-html="true" data-placement="right" data-title="Transferred to a different airline?" data-content="Track with the airline handling it for the latest movements.<br>Click the &quot;Select airline&quot; tab!<div class='link-style jq-multi-select-popover-close' style='text-align: center'>Hide</div>">
        <a href="#t_select" data-toggle="tab" title="Track shipment for other airlines">Select airline</a>
      </li>
    </ul>
    <div class="tab-content">
          <div class="tab-pane active" id="l276">
      <div id="result">
        <div class="track_res jq-multi-results">



<div class="jq-messagelist">
</div>


<iframe  data-form="299" class="track_res_frame" id="track-res-frame" name="resframe-276" onLoad="multiFrameLoaded();"></iframe>

</div>

      </div>
    </div>
    </div>
  </div> <!-- /tabbable -->
  </div>



<div id="form">
<form action="http://www.turkishcargo.com.tr/cargo/cargo_tracking.aspx" method="post" class="jq-multi-form-299" name="trackform" target="resframe-276">
  <input id="prefix" name="prefix" type="hidden" value="<?php echo $_GET['ma']; ?>" />
  <input id="awb" name="awb" type="hidden" value="<?php echo $_GET['number']; ?>" />
  <input id="lang" name="lang" type="hidden" value="tr" />
  <input id="operation" name="operation" type="hidden" value="sorawbinput" />
  <input id="x" name="x" type="hidden" value="55" />
  <input id="y" name="y" type="hidden" value="17" />
</form>

</div>


<div class="loader" id='siteLoader' style="display:none">
  <img alt="Loader" border="0" src="http://cloudfront.track-trace.com/assets/loader-6f2d9f13fddeb63b8f47f0a3d9ead29c.gif" />
  <span id="connect" data-connecting="Connecting..."> Getting results from Turkish Airlines(TK)</span>
  <div style="text-align: center" class="link-style"><a href="#" onClick="multiFadeSiteLoader();; return false;">Hide</a></div>
</div>

<div id="form_init">
<script type="text/javascript">
<!-- hide
$('#siteLoader').show();
multiInit();


// -->
</script>
</div>


</div>
<div id="var-area">
<span id="origin-id">299</span>


</div>

<div id="jq-shipment-info" data-number="<?php echo $_GET['ma'].$_GET['number']; ?>"></div>

</body>
</html>