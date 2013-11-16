
<!DOCTYPE html>
<html class="multi-html">
<head>

 <title>131 - Air cargo tracking result - track-trace</title>

 <meta name="robots" content="noindex"/>
  <link href="http://cloudfront.track-trace.com/assets/application-f024a8bbdb7dff33d80cd118331546fb.css" media="screen" rel="stylesheet" />
 <script src="http://cloudfront.track-trace.com/assets/application-0aa886171d5494fe751abd994af50ef0.js"></script>


</head>
<body class="multi-body">

<div class="navbar">
  <div class="navbar-inner">

      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">

        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
        <a class="brand" href="/">track-trace</a>
      <div class="nav-collapse">
        <ul class="nav">
          <li class="navbar-text">
            Air cargo tracking for: <strong><?php echo $_GET['ma'].'-'.$_GET['number']; ?></strong>
          </li>
          <li class="navbar-text">
            &nbsp;Origin: <strong>Japan Airlines(JL)</strong>
          </li>
        </ul>
        <ul class="nav pull-right">
          <li title="Click to change settings for tracking">
            <a href="/aircargo/settings"><i class="icon-cog icon-white"></i></a>
          </li>
          <li title="Click to see help for this page">
            <a href="/aircargo/help#resultat"><i class="icon-question-sign icon-white"></i></a>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Tools <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="http://translate.google.com/" target="_blank" title="Copy the text you want to translate, then click here to open Google Translate">Translate</a> </li>
              <li><a href="http://timeanddate.com/worldclock/" target="_blank" title="Click to open world clock">World clock</a></li>
                  <li><a href="http://www.world-airport-codes.com/" target="_blank" title="Airport code lookup">Airport codes</a> </li>
                  <li><a href="http://www.airlinecodes.co.uk/airlcodesearch.asp" target="_blank" title="Airline code lookup">Airline codes</a> </li>
            </ul>
          </li>
          <li>
<a href="/aircargo" title="Click to return to tracking page"><i class="icon-backward icon-white"></i> Back</a>
</li>
        </ul>
      </div><!--/.nav-collapse -->

  </div>
</div>

<div class="canvas">
  <div class="multi-tab-area">

  <div class="tabbable tabs-left jq-multi-tab-area">
    <ul class="nav nav-tabs jq-tabs">
      
      
      <li  class="active" data-id="227"><a href="#l227" data-toggle="tab">Japan Airlines(JL)</a></li>


      <li class="jq-select-list-tab jq-multi-select-popover" rel="popover" data-trigger="manual" data-html="true" data-placement="right" data-title="Transferred to a different airline?" data-content="Track with the airline handling it for the latest movements.<br>Click the &quot;Select airline&quot; tab!<div class='link-style jq-multi-select-popover-close' style='text-align: center'>Hide</div>">
        <a href="#t_select" data-toggle="tab" title="Track shipment for other airlines">Select airline</a>
      </li>
    </ul>
    <div class="tab-content">
          <div class="tab-pane active" id="l227">
      <div id="result">
        <div class="track_res jq-multi-results">



<div class="jq-messagelist">
</div>


<iframe  data-form="250" class="track_res_frame" id="track-res-frame" name="resframe-227" onLoad="multiFrameLoaded();">
</iframe>
<div class="multi-result-icon-area">
  <span class="multi-result-icon" title="Click to reload tracking results">
    <a href="#" onClick="javascript:multiReload()"><i class="icon-repeat icon-white"></i></a>
  </span>
  <span class="multi-result-icon" title="Click to show tracking result without frame">
    <a href="#" onClick="javascript:multiFullScreen()"><i class="icon-fullscreen icon-white"></i></a>
  </span>
</div>
</div>

      </div>
    </div>

      <div class="tab-pane" id="t_select">

        

      </div>
    </div>
  </div> -- /tabbable -->
  </div>



<div id="form">
<form action="http://www.cargo.jal.co.jp/cgi-bin/db2www/AWBINFOe.d2w/report" method="post" class="jq-multi-form-250" name="trackform" target="resframe-227">
  <input id="AWB_NO_P" name="AWB_NO_P" type="hidden" value="<?php echo $_GET['ma']; ?>" />
  <input id="AWB_NO_S" name="AWB_NO_S" type="hidden" value="<?php echo $_GET['number']; ?>" />
  <input id="HAWB_NO" name="HAWB_NO" type="hidden" />
  <input id="TXT" name="TXT" type="hidden" value="@@@" />
</form>

</div>

<div id="form2">

</div>

<div class="loader" id='siteLoader' style="display:none">
  <img alt="Loader" border="0" src="http://cloudfront.track-trace.com/assets/loader-6f2d9f13fddeb63b8f47f0a3d9ead29c.gif" />
  <span id="connect" data-connecting="Connecting..."> Getting results from Japan Airlines(JL)</span>
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
<span id="origin-id">250</span>


</div>

<div id="jq-shipment-info" data-number="<?php echo $_GET['ma'].$_GET['number']; ?>"></div>

</body>
</html>

