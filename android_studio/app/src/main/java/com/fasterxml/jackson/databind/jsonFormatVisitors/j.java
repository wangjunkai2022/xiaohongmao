package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.jsonFormatVisitors.m;

/* compiled from: JsonNumberFormatVisitor.java */
/* loaded from: classes.dex */
public interface j extends m {

    /* compiled from: JsonNumberFormatVisitor.java */
    /* loaded from: classes.dex */
    public static class a extends m.a implements j {
        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.j
        public void a(JsonParser.NumberType numberType) {
        }
    }

    void a(JsonParser.NumberType numberType);
}
