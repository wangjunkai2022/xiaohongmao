.class public Lcom/fasterxml/jackson/annotation/JsonFormat$a;
.super Ljava/lang/Object;
.source "JsonFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final c:Lcom/fasterxml/jackson/annotation/JsonFormat$a;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$a;-><init>(II)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->c:Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    .line 3
    iput p2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/annotation/JsonFormat;)Lcom/fasterxml/jackson/annotation/JsonFormat$a;
    .locals 1

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->with()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object v0

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat;->without()[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    move-result-object p0

    return-object p0
.end method

.method public static b([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;[Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$a;
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_0

    aget-object v5, p0, v2

    .line 2
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    shl-int v2, v4, v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    invoke-direct {p0, v3, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$a;-><init>(II)V

    return-object p0
.end method

.method public static c()Lcom/fasterxml/jackson/annotation/JsonFormat$a;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->c:Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    return-object v0
.end method


# virtual methods
.method public d(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs e([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$a;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    if-ne v0, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    invoke-direct {p1, v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$a;-><init>(II)V

    :goto_1
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    .line 3
    iget v2, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    iget v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    if-ne v2, v3, :cond_3

    iget p1, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Lcom/fasterxml/jackson/annotation/JsonFormat$a;)Lcom/fasterxml/jackson/annotation/JsonFormat$a;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget v0, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    .line 2
    iget v1, p1, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    return-object p0

    .line 3
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    if-nez v2, :cond_2

    iget v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    if-nez v3, :cond_2

    return-object p1

    :cond_2
    not-int p1, v0

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    .line 4
    iget v3, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    not-int v1, v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    if-ne p1, v2, :cond_3

    if-ne v0, v3, :cond_3

    return-object p0

    .line 5
    :cond_3
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    invoke-direct {v1, p1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$a;-><init>(II)V

    return-object v1
.end method

.method public varargs g([Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Lcom/fasterxml/jackson/annotation/JsonFormat$a;
    .locals 5

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    if-ne v0, p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    invoke-direct {p1, v1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$a;-><init>(II)V

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    iget v1, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->c:Lcom/fasterxml/jackson/annotation/JsonFormat$a;

    if-ne p0, v0, :cond_0

    const-string v0, "EMPTY"

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/fasterxml/jackson/annotation/JsonFormat$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "(enabled=0x%x,disabled=0x%x)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
