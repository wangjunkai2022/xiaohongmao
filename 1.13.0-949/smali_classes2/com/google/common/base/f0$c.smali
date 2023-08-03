.class final Lcom/google/common/base/f0$c;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/f0$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/f0;->j(Lcom/google/common/base/g;)Lcom/google/common/base/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/g;


# direct methods
.method constructor <init>(Lcom/google/common/base/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/f0$c;->a:Lcom/google/common/base/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/f0$c;->b(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)Lcom/google/common/base/f0$g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)Lcom/google/common/base/f0$g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/base/f0$c;->a:Lcom/google/common/base/g;

    invoke-virtual {v0, p2}, Lcom/google/common/base/g;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/f;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/base/f0$c$a;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/common/base/f0$c$a;-><init>(Lcom/google/common/base/f0$c;Lcom/google/common/base/f0;Ljava/lang/CharSequence;Lcom/google/common/base/f;)V

    return-object v1
.end method
