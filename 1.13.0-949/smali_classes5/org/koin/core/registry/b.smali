.class public final Lorg/koin/core/registry/b;
.super Ljava/lang/Object;
.source "PropertyRegistryExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPropertyRegistryExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PropertyRegistryExt.kt\norg/koin/core/registry/PropertyRegistryExtKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,56:1\n211#2,2:57\n*S KotlinDebug\n*F\n+ 1 PropertyRegistryExt.kt\norg/koin/core/registry/PropertyRegistryExtKt\n*L\n17#1:57,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u0010\u0010\t\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u0005H\u0002\u001a\n\u0010\n\u001a\u00020\u0003*\u00020\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/koin/core/registry/a;",
        "Ljava/util/Properties;",
        "properties",
        "",
        "d",
        "",
        "fileName",
        "b",
        "content",
        "c",
        "a",
        "koin-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lorg/koin/core/registry/a;)V
    .locals 3
    .param p0    # Lorg/koin/core/registry/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/registry/a;->d()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    sget-object v2, Lorg/koin/core/registry/b$a;->a:Lorg/koin/core/registry/b$a;

    invoke-virtual {v0, v1, v2}, Lw8/b;->i(Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function0;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "sysProperties"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/koin/core/registry/b;->d(Lorg/koin/core/registry/a;Ljava/util/Properties;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getenv()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 5
    invoke-static {p0, v1}, Lorg/koin/core/registry/b;->d(Lorg/koin/core/registry/a;Ljava/util/Properties;)V

    return-void
.end method

.method public static final b(Lorg/koin/core/registry/a;Ljava/lang/String;)V
    .locals 4
    .param p0    # Lorg/koin/core/registry/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/registry/a;->d()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    new-instance v2, Lorg/koin/core/registry/b$b;

    invoke-direct {v2, p1}, Lorg/koin/core/registry/b$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lw8/b;->i(Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function0;)V

    .line 2
    const-class v0, Lorg/koin/core/Koin;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->readBytes(Ljava/net/URL;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/koin/core/registry/a;->d()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    new-instance v3, Lorg/koin/core/registry/b$c;

    invoke-direct {v3, p1}, Lorg/koin/core/registry/b$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Lw8/b;->i(Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function0;)V

    .line 4
    invoke-static {v2}, Lorg/koin/core/registry/b;->c(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lorg/koin/core/registry/b;->d(Lorg/koin/core/registry/a;Ljava/util/Properties;)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Lorg/koin/core/error/NoPropertyFileFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No properties found for file \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/koin/core/error/NoPropertyFileFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final c(Ljava/lang/String;)Ljava/util/Properties;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static final d(Lorg/koin/core/registry/a;Ljava/util/Properties;)V
    .locals 3
    .param p0    # Lorg/koin/core/registry/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Ljava/util/Properties;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lorg/koin/core/registry/a;->d()Lorg/koin/core/Koin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/Koin;->u()Lw8/b;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    new-instance v2, Lorg/koin/core/registry/b$d;

    invoke-direct {v2, p1}, Lorg/koin/core/registry/b$d;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0, v1, v2}, Lw8/b;->i(Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function0;)V

    .line 2
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v1, v0}, Lorg/koin/core/registry/a;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
