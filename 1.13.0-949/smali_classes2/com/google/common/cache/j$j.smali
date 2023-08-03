.class final Lcom/google/common/cache/j$j;
.super Lcom/google/common/cache/j$i;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/j<",
        "TK;TV;>.i<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/google/common/cache/j;


# direct methods
.method constructor <init>(Lcom/google/common/cache/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/cache/j$j;->i:Lcom/google/common/cache/j;

    invoke-direct {p0, p1}, Lcom/google/common/cache/j$i;-><init>(Lcom/google/common/cache/j;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/j$i;->c()Lcom/google/common/cache/j$l0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/j$l0;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
