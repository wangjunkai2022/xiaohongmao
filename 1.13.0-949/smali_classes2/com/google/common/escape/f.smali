.class public abstract Lcom/google/common/escape/f;
.super Ljava/lang/Object;
.source "Escaper.java"


# annotations
.annotation build Lh3/b;
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/escape/f$a;

    invoke-direct {v0, p0}, Lcom/google/common/escape/f$a;-><init>(Lcom/google/common/escape/f;)V

    iput-object v0, p0, Lcom/google/common/escape/f;->a:Lcom/google/common/base/q;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/base/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/q<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/escape/f;->a:Lcom/google/common/base/q;

    return-object v0
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method
