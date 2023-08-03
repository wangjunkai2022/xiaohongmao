.class public abstract Lcom/google/common/cache/h$a;
.super Lcom/google/common/cache/h;
.source "ForwardingLoadingCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/cache/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/i<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/cache/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/i<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/h;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/i;

    iput-object p1, p0, Lcom/google/common/cache/h$a;->a:Lcom/google/common/cache/i;

    return-void
.end method


# virtual methods
.method protected bridge synthetic L()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h$a;->N()Lcom/google/common/cache/i;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic M()Lcom/google/common/cache/c;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/h$a;->N()Lcom/google/common/cache/i;

    move-result-object v0

    return-object v0
.end method

.method protected final N()Lcom/google/common/cache/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/i<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/h$a;->a:Lcom/google/common/cache/i;

    return-object v0
.end method
