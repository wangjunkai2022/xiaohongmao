.class final Lshaded/org/apache/commons/codec/language/f$b;
.super Ljava/lang/Object;
.source "DaitchMokotoffSoundex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshaded/org/apache/commons/codec/language/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lshaded/org/apache/commons/codec/language/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lshaded/org/apache/commons/codec/language/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lshaded/org/apache/commons/codec/language/f$b;
    .locals 3

    .line 1
    new-instance v0, Lshaded/org/apache/commons/codec/language/f$b;

    invoke-direct {v0}, Lshaded/org/apache/commons/codec/language/f$b;-><init>()V

    .line 2
    iget-object v1, v0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/language/f$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/f$b;->c:Ljava/lang/String;

    iput-object v1, v0, Lshaded/org/apache/commons/codec/language/f$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_3

    .line 2
    iget-object p2, p0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v0, 0x6

    if-ge p2, v0, :cond_3

    .line 3
    iget-object p2, p0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p2, p0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-le p2, v0, :cond_2

    .line 5
    iget-object p2, p0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lshaded/org/apache/commons/codec/language/f$b;->b:Ljava/lang/String;

    .line 7
    :cond_3
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/f$b;->c:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lshaded/org/apache/commons/codec/language/f$b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/language/f$b;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lshaded/org/apache/commons/codec/language/f$b;

    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/f$b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lshaded/org/apache/commons/codec/language/f$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->b:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/f$b;->b:Ljava/lang/String;

    return-object v0
.end method
