.class public abstract Lorg/minidns/dnslabel/DnsLabel;
.super Ljava/lang/Object;
.source "DnsLabel.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;
    }
.end annotation


# static fields
.field public static final e:I = 0x3f

.field public static f:Z = true


# instance fields
.field public final a:Ljava/lang/String;

.field private transient b:Ljava/lang/String;

.field private transient c:Lorg/minidns/dnslabel/DnsLabel;

.field private transient d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    .line 3
    sget-boolean v0, Lorg/minidns/dnslabel/DnsLabel;->f:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/minidns/dnslabel/DnsLabel;->h()V

    .line 5
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->d:[B

    array-length v0, v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance v0, Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;

    invoke-direct {v0, p1}, Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lorg/minidns/dnslabel/c;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lorg/minidns/dnslabel/c;->j(Ljava/lang/String;)Lorg/minidns/dnslabel/c;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/e;->j(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Label is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c([Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;
    .locals 3

    .line 1
    array-length v0, p0

    new-array v0, v0, [Lorg/minidns/dnslabel/DnsLabel;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/minidns/dnslabel/DnsLabel;->b(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "xn--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->d:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->d:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lorg/minidns/dnslabel/DnsLabel;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->c:Lorg/minidns/dnslabel/DnsLabel;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/minidns/dnslabel/DnsLabel;->b(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->c:Lorg/minidns/dnslabel/DnsLabel;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->c:Lorg/minidns/dnslabel/DnsLabel;

    return-object v0
.end method

.method public final charAt(I)C
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/minidns/dnslabel/DnsLabel;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->b:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/minidns/dnslabel/DnsLabel;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lorg/minidns/dnslabel/DnsLabel;

    .line 3
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    iget-object p1, p1, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i(Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/minidns/dnslabel/DnsLabel;->h()V

    .line 2
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->d:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->d:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->a:Ljava/lang/String;

    return-object v0
.end method
