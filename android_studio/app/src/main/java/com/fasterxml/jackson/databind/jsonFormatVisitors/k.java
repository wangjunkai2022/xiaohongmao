package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;

/* compiled from: JsonObjectFormatVisitor.java */
/* loaded from: classes.dex */
public interface k extends e {

    /* compiled from: JsonObjectFormatVisitor.java */
    /* loaded from: classes.dex */
    public static class a implements k {

        /* renamed from: a  reason: collision with root package name */
        protected com.fasterxml.jackson.databind.l f15388a;

        public a() {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.e
        public com.fasterxml.jackson.databind.l a() {
            return this.f15388a;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.k
        public void l(String str, d dVar, JavaType javaType) throws JsonMappingException {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.k
        public void m(BeanProperty beanProperty) throws JsonMappingException {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.e
        public void n(com.fasterxml.jackson.databind.l lVar) {
            this.f15388a = lVar;
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.k
        public void r(BeanProperty beanProperty) throws JsonMappingException {
        }

        @Override // com.fasterxml.jackson.databind.jsonFormatVisitors.k
        public void s(String str, d dVar, JavaType javaType) throws JsonMappingException {
        }

        public a(com.fasterxml.jackson.databind.l lVar) {
            this.f15388a = lVar;
        }
    }

    void l(String str, d dVar, JavaType javaType) throws JsonMappingException;

    void m(BeanProperty beanProperty) throws JsonMappingException;

    void r(BeanProperty beanProperty) throws JsonMappingException;

    void s(String str, d dVar, JavaType javaType) throws JsonMappingException;
}
