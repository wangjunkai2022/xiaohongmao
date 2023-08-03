package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: JsonArrayFormatVisitor.java */
/* loaded from: classes.dex */
public interface b extends e {

    /* compiled from: JsonArrayFormatVisitor.java */
    /* loaded from: classes.dex */
    public static class a implements b {

        /* renamed from: a  reason: collision with root package name */
        protected com.fasterxml.jackson.databind.l f15385a;

        public a() {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.e
        public com.fasterxml.jackson.databind.l a() {
            return this.f15385a;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.b
        public void c(d dVar, JavaType javaType) throws JsonMappingException {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.b
        public void d(JsonFormatTypes jsonFormatTypes) throws JsonMappingException {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.e
        public void n(com.fasterxml.jackson.databind.l lVar) {
            this.f15385a = lVar;
        }

        public a(com.fasterxml.jackson.databind.l lVar) {
            this.f15385a = lVar;
        }
    }

    void c(d dVar, JavaType javaType) throws JsonMappingException;

    void d(JsonFormatTypes jsonFormatTypes) throws JsonMappingException;
}
