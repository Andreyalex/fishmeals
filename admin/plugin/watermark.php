<?php

class AdminPluginWatermark
{
    public function afterImageUpload($file)
    {
        require_once DIR_SYSTEM . '/library/image.php';

        $image = new Image($file);
        $image->watermark(DIR_IMAGE_WATERMARK, IMAGE_WATERMARK_POSITION);
        $image->save($file);
    }
}