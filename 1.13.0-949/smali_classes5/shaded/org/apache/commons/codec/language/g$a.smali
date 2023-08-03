.class public Lshaded/org/apache/commons/codec/language/g$a;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshaded/org/apache/commons/codec/language/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final b:Ljava/lang/StringBuilder;

.field private final c:I

.field final synthetic d:Lshaded/org/apache/commons/codec/language/g;


# direct methods
.method public constructor <init>(Lshaded/org/apache/commons/codec/language/g;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/g$a;->d:Lshaded/org/apache/commons/codec/language/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/g;->n()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->a:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/g;->n()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->b:Ljava/lang/StringBuilder;

    .line 4
    iput p2, p0, Lshaded/org/apache/commons/codec/language/g$a;->c:I

    return-void
.end method


# virtual methods
.method public a(C)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/g$a;->g(C)V

    .line 2
    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/g$a;->e(C)V

    return-void
.end method

.method public b(CC)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/g$a;->g(C)V

    .line 2
    invoke-virtual {p0, p2}, Lshaded/org/apache/commons/codec/language/g$a;->e(C)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/g$a;->h(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/g$a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/g$a;->h(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p2}, Lshaded/org/apache/commons/codec/language/g$a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public e(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lshaded/org/apache/commons/codec/language/g$a;->c:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->c:I

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/g$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/g$a;->b:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public g(C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lshaded/org/apache/commons/codec/language/g$a;->c:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->c:I

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/g$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/g$a;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lshaded/org/apache/commons/codec/language/g$a;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/g$a;->b:Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Lshaded/org/apache/commons/codec/language/g$a;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
