package com.fasterxml.jackson.databind.jsonFormatVisitors;

import java.util.Set;

/* compiled from: JsonValueFormatVisitor.java */
/* loaded from: classes.dex */
public interface m {

    /* compiled from: JsonValueFormatVisitor.java */
    /* loaded from: classes.dex */
    public static class a implements m {
        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.m
        public void b(Set<String> set) {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.m
        public void c(JsonValueFormat jsonValueFormat) {
        }
    }

    void b(Set<String> set);

    void c(JsonValueFormat jsonValueFormat);
}
