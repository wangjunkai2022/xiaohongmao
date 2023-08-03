.class public final Lcom/google/common/reflect/d$b;
.super Ljava/lang/Object;
.source "ImmutableTypeToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lh3/a;
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap$b<",
            "Lcom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/d$b;->a:Lcom/google/common/collect/ImmutableMap$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/reflect/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/reflect/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/d<",
            "TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/reflect/d;

    iget-object v1, p0, Lcom/google/common/reflect/d$b;->a:Lcom/google/common/collect/ImmutableMap$b;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/d;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/reflect/d$a;)V

    return-object v0
.end method

.method public b(Lcom/google/common/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/common/reflect/d$b;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lcom/google/common/reflect/TypeToken<",
            "TT;>;TT;)",
            "Lcom/google/common/reflect/d$b<",
            "TB;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/d$b;->a:Lcom/google/common/collect/ImmutableMap$b;

    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->G()Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/common/reflect/d$b;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/google/common/reflect/d$b<",
            "TB;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/d$b;->a:Lcom/google/common/collect/ImmutableMap$b;

    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableMap$b;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    return-object p0
.end method
