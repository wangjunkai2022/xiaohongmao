.class public abstract Lcom/google/common/collect/i3;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/i3$m;,
        Lcom/google/common/collect/i3$l;,
        Lcom/google/common/collect/i3$j;,
        Lcom/google/common/collect/i3$k;,
        Lcom/google/common/collect/i3$f;,
        Lcom/google/common/collect/i3$n;,
        Lcom/google/common/collect/i3$h;,
        Lcom/google/common/collect/i3$g;,
        Lcom/google/common/collect/i3$i;,
        Lcom/google/common/collect/i3$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final a:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/i3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/i3;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/Class;)Lcom/google/common/collect/i3$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Enum<",
            "TK0;>;>(",
            "Ljava/lang/Class<",
            "TK0;>;)",
            "Lcom/google/common/collect/i3$k<",
            "TK0;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/i3$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i3$d;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static d()Lcom/google/common/collect/i3$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i3$k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/i3;->e(I)Lcom/google/common/collect/i3$k;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)Lcom/google/common/collect/i3$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/i3$k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/collect/y;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/i3$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i3$a;-><init>(I)V

    return-object v0
.end method

.method public static f()Lcom/google/common/collect/i3$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i3$k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/i3;->g(I)Lcom/google/common/collect/i3$k;

    move-result-object v0

    return-object v0
.end method

.method public static g(I)Lcom/google/common/collect/i3$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/i3$k<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/collect/y;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/i3$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i3$b;-><init>(I)V

    return-object v0
.end method

.method public static h()Lcom/google/common/collect/i3$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/i3$k<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/s3;->B()Lcom/google/common/collect/s3;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/i3;->i(Ljava/util/Comparator;)Lcom/google/common/collect/i3$k;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/util/Comparator;)Lcom/google/common/collect/i3$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lcom/google/common/collect/i3$k<",
            "TK0;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/i3$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/i3$c;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/common/collect/h3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public b(Lcom/google/common/collect/h3;)Lcom/google/common/collect/h3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/collect/h3<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/h3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/i3;->a()Lcom/google/common/collect/h3;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Lcom/google/common/collect/h3;->putAll(Lcom/google/common/collect/h3;)Z

    return-object v0
.end method
