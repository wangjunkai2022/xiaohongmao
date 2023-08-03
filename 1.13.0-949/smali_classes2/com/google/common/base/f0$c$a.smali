.class Lcom/google/common/base/f0$c$a;
.super Lcom/google/common/base/f0$g;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/f0$c;->b(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)Lcom/google/common/base/f0$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/f;

.field final synthetic i:Lcom/google/common/base/f0$c;


# direct methods
.method constructor <init>(Lcom/google/common/base/f0$c;Lcom/google/common/base/f0;Ljava/lang/CharSequence;Lcom/google/common/base/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/base/f0$c$a;->i:Lcom/google/common/base/f0$c;

    iput-object p4, p0, Lcom/google/common/base/f0$c$a;->h:Lcom/google/common/base/f;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/f0$g;-><init>(Lcom/google/common/base/f0;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 0

    iget-object p1, p0, Lcom/google/common/base/f0$c$a;->h:Lcom/google/common/base/f;

    invoke-virtual {p1}, Lcom/google/common/base/f;->a()I

    move-result p1

    return p1
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/base/f0$c$a;->h:Lcom/google/common/base/f;

    invoke-virtual {v0, p1}, Lcom/google/common/base/f;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/common/base/f0$c$a;->h:Lcom/google/common/base/f;

    invoke-virtual {p1}, Lcom/google/common/base/f;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
