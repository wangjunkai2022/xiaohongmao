.class public abstract Lcom/google/common/base/l;
.super Ljava/lang/ref/PhantomReference;
.source "FinalizablePhantomReference.java"

# interfaces
.implements Lcom/google/common/base/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/PhantomReference<",
        "TT;>;",
        "Lcom/google/common/base/m;"
    }
.end annotation

.annotation build Lh3/c;
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/google/common/base/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/common/base/n;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/common/base/n;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-virtual {p2}, Lcom/google/common/base/n;->b()V

    return-void
.end method
