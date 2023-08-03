.class final Lshaded/org/apache/commons/codec/language/bm/c$a;
.super Lshaded/org/apache/commons/codec/language/bm/c$c;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshaded/org/apache/commons/codec/language/bm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lshaded/org/apache/commons/codec/language/bm/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Can\'t fetch any language from the empty language set."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/c$c;
    .locals 0

    return-object p1
.end method

.method public g(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/c$c;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NO_LANGUAGES"

    return-object v0
.end method
