.class public abstract Lshaded/org/apache/commons/codec/language/bm/c$c;
.super Ljava/lang/Object;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshaded/org/apache/commons/codec/language/bm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/util/Set;)Lshaded/org/apache/commons/codec/language/bm/c$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lshaded/org/apache/commons/codec/language/bm/c$c;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lshaded/org/apache/commons/codec/language/bm/c;->d:Lshaded/org/apache/commons/codec/language/bm/c$c;

    goto :goto_0

    :cond_0
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lshaded/org/apache/commons/codec/language/bm/c$d;-><init>(Ljava/util/Set;Lshaded/org/apache/commons/codec/language/bm/c$a;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method abstract f(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/c$c;
.end method

.method public abstract g(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/c$c;
.end method
