package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: JsonFormatVisitorWrapper.java */
/* loaded from: classes.dex */
public interface f extends e {

    /* compiled from: JsonFormatVisitorWrapper.java */
    /* loaded from: classes.dex */
    public static class a implements f {

        /* renamed from: a  reason: collision with root package name */
        protected com.fasterxml.jackson.databind.l f15386a;

        public a() {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.e
        public com.fasterxml.jackson.databind.l a() {
            return this.f15386a;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public g b(JavaType javaType) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public k e(JavaType javaType) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public h g(JavaType javaType) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public l i(JavaType javaType) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public com.fasterxml.jackson.databind.jsonFormatVisitors.a j(JavaType javaType) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public j k(JavaType javaType) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.e
        public void n(com.fasterxml.jackson.databind.l lVar) {
            this.f15386a = lVar;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public b o(JavaType javaType) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public c p(JavaType javaType) throws JsonMappingException {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.f
        public i q(JavaType javaType) throws JsonMappingException {
            return null;
        }

        public a(com.fasterxml.jackson.databind.l lVar) {
            this.f15386a = lVar;
        }
    }

    g b(JavaType javaType) throws JsonMappingException;

    k e(JavaType javaType) throws JsonMappingException;

    h g(JavaType javaType) throws JsonMappingException;

    l i(JavaType javaType) throws JsonMappingException;

    com.fasterxml.jackson.databind.jsonFormatVisitors.a j(JavaType javaType) throws JsonMappingException;

    j k(JavaType javaType) throws JsonMappingException;

    b o(JavaType javaType) throws JsonMappingException;

    c p(JavaType javaType) throws JsonMappingException;

    i q(JavaType javaType) throws JsonMappingException;
}
