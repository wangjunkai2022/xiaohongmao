.class public Lcom/facebook/common/internal/a;
.super Ljava/lang/Object;
.source "AndroidPredicates.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/common/internal/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/common/internal/a$b;

    invoke-direct {v0}, Lcom/facebook/common/internal/a$b;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/facebook/common/internal/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/common/internal/k<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/common/internal/a$a;

    invoke-direct {v0}, Lcom/facebook/common/internal/a$a;-><init>()V

    return-object v0
.end method
