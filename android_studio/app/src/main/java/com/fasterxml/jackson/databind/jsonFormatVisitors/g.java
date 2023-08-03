package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.jsonFormatVisitors.m;

/* compiled from: JsonIntegerFormatVisitor.java */
/* loaded from: classes.dex */
public interface g extends m {

    /* compiled from: JsonIntegerFormatVisitor.java */
    /* loaded from: classes.dex */
    public static class a extends m.a implements g {
        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.g
        public void a(JsonParser.NumberType numberType) {
        }
    }

    void a(JsonParser.NumberType numberType);
}
