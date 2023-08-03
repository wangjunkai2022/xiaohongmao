.class Lcom/google/common/base/f0$a$a;
.super Lcom/google/common/base/f0$g;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/f0$a;->b(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)Lcom/google/common/base/f0$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/f0$a;


# direct methods
.method constructor <init>(Lcom/google/common/base/f0$a;Lcom/google/common/base/f0;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/f0$a$a;->h:Lcom/google/common/base/f0$a;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/f0$g;-><init>(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method e(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method f(I)I
    .locals 2

    iget-object v0, p0, Lcom/google/common/base/f0$a$a;->h:Lcom/google/common/base/f0$a;

    iget-object v0, v0, Lcom/google/common/base/f0$a;->a:Lcom/google/common/base/d;

    iget-object v1, p0, Lcom/google/common/base/f0$g;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/d;->o(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
