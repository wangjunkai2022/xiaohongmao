package com.qennnsad.aknkaksd.data.bean;

/* loaded from: classes3.dex */
public class CameraSize {
    public int height;
    public int width;

    public CameraSize(int i4, int i10) {
        this.width = i4;
        this.height = i10;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CameraSize) {
            CameraSize cameraSize = (CameraSize) obj;
            return this.width == cameraSize.width && this.height == cameraSize.height;
        }
        return false;
    }

    public int hashCode() {
        return (this.width * 32713) + this.height;
    }

    public String toString() {
        return "CameraSize{width=" + this.width + ", height=" + this.height + '}';
    }
}
