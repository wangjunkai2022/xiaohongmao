.class public Lcom/fasterxml/jackson/core/util/b;
.super Ljava/lang/Object;
.source "BufferRecyclers.java"


# static fields
.field public static final a:Ljava/lang/String; = "com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers"

.field private static final b:Lcom/fasterxml/jackson/core/util/k;

.field protected static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/fasterxml/jackson/core/util/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "true"

    const-string v1, "com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers"

    .line 1
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/fasterxml/jackson/core/util/k;->a()Lcom/fasterxml/jackson/core/util/k;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcom/fasterxml/jackson/core/util/b;->b:Lcom/fasterxml/jackson/core/util/k;

    .line 3
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/util/b;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/core/io/e;->k()Lcom/fasterxml/jackson/core/io/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/e;->j(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/fasterxml/jackson/core/util/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/util/b;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/util/a;

    :goto_0
    if-nez v1, :cond_2

    .line 3
    new-instance v1, Lcom/fasterxml/jackson/core/util/a;

    invoke-direct {v1}, Lcom/fasterxml/jackson/core/util/a;-><init>()V

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/core/util/b;->b:Lcom/fasterxml/jackson/core/util/k;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/util/k;->d(Lcom/fasterxml/jackson/core/util/a;)Ljava/lang/ref/SoftReference;

    move-result-object v2

    goto :goto_1

    .line 6
    :cond_1
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 7
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method public static c()Lcom/fasterxml/jackson/core/io/e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/core/io/e;->k()Lcom/fasterxml/jackson/core/io/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/core/io/e;->k()Lcom/fasterxml/jackson/core/io/e;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/io/e;->l(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/core/io/e;->k()Lcom/fasterxml/jackson/core/io/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/e;->n(Ljava/lang/String;)[C

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/fasterxml/jackson/core/io/e;->k()Lcom/fasterxml/jackson/core/io/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/io/e;->o(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/util/b;->b:Lcom/fasterxml/jackson/core/util/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/k;->b()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
