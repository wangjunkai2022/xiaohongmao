package com.bumptech.glide;

/* loaded from: classes.dex */
public enum MemoryCategory {
    LOW(0.5f),
    NORMAL(1.0f),
    HIGH(1.5f);
    

    /* renamed from: a  reason: collision with root package name */
    private final float f7114a;

    MemoryCategory(float f10) {
        this.f7114a = f10;
    }

    public float getMultiplier() {
        return this.f7114a;
    }
}
