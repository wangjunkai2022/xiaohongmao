.class public Lcom/fasterxml/jackson/core/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MAX_CONTENT_SNIPPET:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NA:Lcom/fasterxml/jackson/core/JsonLocation;

.field private static final g:J = 0x2L


# instance fields
.field protected final a:J

.field protected final b:J

.field protected final c:I

.field protected final d:I

.field protected final e:Lcom/fasterxml/jackson/core/io/ContentReference;

.field protected transient f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-static {}, Lcom/fasterxml/jackson/core/io/ContentReference;->unknown()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    sput-object v8, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/ContentReference;JII)V
    .locals 8

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/io/ContentReference;->unknown()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p1

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    .line 5
    iput-wide p2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    .line 6
    iput-wide p4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->b:J

    .line 7
    iput p6, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:I

    .line 8
    iput p7, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonLocation;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/fasterxml/jackson/core/JsonLocation;->a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-void
.end method

.method protected static a(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p0}, Lcom/fasterxml/jackson/core/io/ContentReference;->construct(ZLjava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendOffsetDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->hasTextualContent()Z

    move-result v0

    const-string v1, ", column: "

    const-string v2, "line: "

    const-string v3, "UNKNOWN"

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:I

    if-ltz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    if-ltz v0, :cond_1

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:I

    if-lez v0, :cond_3

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    if-lez v0, :cond_5

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "byte offset: #"

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_4

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    return-object p1
.end method

.method public contentReference()Lcom/fasterxml/jackson/core/io/ContentReference;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-nez v2, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p1, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    if-eqz v2, :cond_4

    return v1

    .line 5
    :cond_3
    iget-object v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/ContentReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:I

    iget v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->c:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    iget v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->b:J

    iget-wide v4, p1, Lcom/fasterxml/jackson/core/JsonLocation;->b:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    iget-wide v4, p1, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getByteOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    return-wide v0
.end method

.method public getCharOffset()J
    .locals 2

    iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->b:J

    return-wide v0
.end method

.method public getColumnNr()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    return v0
.end method

.method public getLineNr()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:I

    return v0
.end method

.method public getSourceRef()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->getRawContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->c:I

    xor-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->d:I

    add-int/2addr v0, v1

    .line 4
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->b:J

    long-to-int v2, v1

    xor-int/2addr v0, v2

    .line 5
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->a:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public offsetDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonLocation;->appendOffsetDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sourceDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->e:Lcom/fasterxml/jackson/core/io/ContentReference;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/ContentReference;->buildSourceDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->f:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonLocation;->sourceDescription()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[Source: "

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonLocation;->appendOffsetDescription(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
