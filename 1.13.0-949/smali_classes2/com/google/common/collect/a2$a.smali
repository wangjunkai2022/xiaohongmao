.class public abstract Lcom/google/common/collect/a2$a;
.super Lcom/google/common/collect/o0;
.source "ForwardingSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/o0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/a2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/a2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/a2$a;->d:Lcom/google/common/collect/a2;

    invoke-direct {p0}, Lcom/google/common/collect/o0;-><init>()V

    return-void
.end method


# virtual methods
.method j0()Lcom/google/common/collect/v4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v4<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a2$a;->d:Lcom/google/common/collect/a2;

    return-object v0
.end method
