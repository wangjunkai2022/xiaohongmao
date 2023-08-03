package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: JsonMapFormatVisitor.java */
/* loaded from: classes.dex */
public interface h extends e {

    /* compiled from: JsonMapFormatVisitor.java */
    /* loaded from: classes.dex */
    public static class a implements h {

        /* renamed from: a  reason: collision with root package name */
        protected com.fasterxml.jackson.databind.l f15387a;

        public a() {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.e
        public com.fasterxml.jackson.databind.l a() {
            return this.f15387a;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.h
        public void f(d dVar, JavaType javaType) throws JsonMappingException {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.h
        public void h(d dVar, JavaType javaType) throws JsonMappingException {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.e
        public void n(com.fasterxml.jackson.databind.l lVar) {
            this.f15387a = lVar;
        }

        public a(com.fasterxml.jackson.databind.l lVar) {
            this.f15387a = lVar;
        }
    }

    void f(d dVar, JavaType javaType) throws JsonMappingException;

    void h(d dVar, JavaType javaType) throws JsonMappingException;
}
