.class public abstract Lcom/fasterxml/jackson/databind/cfg/d;
.super Ljava/lang/Object;
.source "MapperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        "B:",
        "Lcom/fasterxml/jackson/databind/cfg/d<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-void
.end method

.method public static X()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/j;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/d;->Y(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static Y(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/j;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const-class v1, Lcom/fasterxml/jackson/databind/j;

    invoke-static {v1, p0}, Lcom/fasterxml/jackson/databind/cfg/d;->n0(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/j;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static n0(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p0

    :goto_0
    return-object p0

    .line 3
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/d$a;

    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/cfg/d$a;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ServiceLoader;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultLeniency(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public D(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/i;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/i;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public E(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public F(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonSetter$Value;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public G(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs H([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs I([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs J([Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs K([Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs L([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs M([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs N([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs O([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs P([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs Q([Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs R([Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs S([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs T([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs U([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public V(Lcom/fasterxml/jackson/databind/ser/f;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/f;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setFilterProvider(Lcom/fasterxml/jackson/databind/ser/f;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public W()Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/d;->X()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/d;->j(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object v0

    return-object v0
.end method

.method public Z(Lcom/fasterxml/jackson/databind/cfg/c;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/c;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/c;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method protected final a()Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method

.method public a0(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/InjectableValues;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setInjectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;",
            ")TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setAccessorNaming(Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public b0(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public c0(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public d0(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            "Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public e0(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public f0(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/fasterxml/jackson/databind/deser/f;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/f;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addHandler(Lcom/fasterxml/jackson/databind/deser/f;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public g0(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setNodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public h0(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPolymorphicTypeValidator(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/fasterxml/jackson/databind/j;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/j;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/j;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public i0(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/fasterxml/jackson/databind/j;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/j;

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/d;->i(Lcom/fasterxml/jackson/databind/j;)Lcom/fasterxml/jackson/databind/cfg/d;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public j0(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs k([Lcom/fasterxml/jackson/databind/j;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/j;",
            ")TB;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/cfg/d;->i(Lcom/fasterxml/jackson/databind/j;)Lcom/fasterxml/jackson/databind/cfg/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs k0([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public l(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public varargs l0([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public m()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public m0(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public n()Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->clearProblemHandlers()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object v0

    return-object v0
.end method

.method public o(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public o0(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public p0(Lcom/fasterxml/jackson/databind/ser/k;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/k;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializerFactory(Lcom/fasterxml/jackson/databind/ser/k;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/fasterxml/jackson/core/StreamReadFeature;Z)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public q0(Lcom/fasterxml/jackson/databind/jsontype/e;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/e<",
            "*>;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/e;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/fasterxml/jackson/core/StreamWriteFeature;Z)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public r0()Lcom/fasterxml/jackson/core/TokenStreamFactory;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->tokenStreamFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public s(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lcom/fasterxml/jackson/databind/jsontype/a;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/a;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSubtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/a;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public t0(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public u0(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/PropertyAccessor;",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public v(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setConstructorDetector(Lcom/fasterxml/jackson/databind/cfg/ConstructorDetector;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public v0(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public w()Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->deactivateDefaultTyping()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object v0

    return-object v0
.end method

.method public w0(Lcom/fasterxml/jackson/databind/type/LogicalType;Ljava/util/function/Consumer;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/LogicalType;",
            "Ljava/util/function/Consumer<",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->coercionConfigFor(Lcom/fasterxml/jackson/databind/type/LogicalType;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultAttributes(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public x0(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->coercionConfigFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public y(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/Base64Variant;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setBase64Variant(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public y0(Ljava/util/function/Consumer;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->coercionConfigDefaults()Lcom/fasterxml/jackson/databind/cfg/MutableCoercionConfig;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method

.method public z0(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/fasterxml/jackson/databind/cfg/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;)TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/d;->a:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/d;->a()Lcom/fasterxml/jackson/databind/cfg/d;

    move-result-object p1

    return-object p1
.end method
