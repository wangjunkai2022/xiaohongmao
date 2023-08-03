.class public Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ChunkedInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
    }
.end annotation


# instance fields
.field private h:I

.field private i:I

.field private j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field k:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    .line 3
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->i:I

    .line 4
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->a:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 5
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->k:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method

.method private w0(CC)Z
    .locals 2

    if-eq p1, p2, :cond_0

    .line 1
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 2
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " was expected, got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->v0(Ljava/lang/Exception;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private x0(C)Z
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->w0(CC)Z

    move-result p1

    return p1
.end method

.method private y0(C)Z
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->w0(CC)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public s(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->O()V

    return-void

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result p1

    if-lez p1, :cond_b

    .line 4
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$1;->a:[I

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    .line 5
    :pswitch_1
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->q()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->y0(C)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    if-lez p1, :cond_2

    .line 7
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->a:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_1

    .line 8
    :cond_2
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->g:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->v0(Ljava/lang/Exception;)V

    :goto_1
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    goto :goto_0

    .line 11
    :pswitch_2
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->q()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->x0(C)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 12
    :cond_3
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->f:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_0

    .line 13
    :pswitch_3
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->P()I

    move-result p1

    .line 14
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 15
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->i:I

    if-nez v0, :cond_4

    .line 16
    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->e:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->k:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->k(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 18
    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->k:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_0

    .line 19
    :pswitch_4
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->q()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->y0(C)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 20
    :cond_6
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->d:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_0

    .line 21
    :pswitch_5
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->q()C

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_7

    .line 22
    sget-object p1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->b:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    goto :goto_2

    .line 23
    :cond_7
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    mul-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    const/16 v1, 0x61

    if-lt p1, v1, :cond_8

    const/16 v1, 0x66

    if-gt p1, v1, :cond_8

    add-int/lit8 p1, p1, -0x61

    add-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    .line 24
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    goto :goto_2

    :cond_8
    const/16 v1, 0x30

    if-lt p1, v1, :cond_9

    const/16 v1, 0x39

    if-gt p1, v1, :cond_9

    add-int/lit8 p1, p1, -0x30

    add-int/2addr v0, p1

    .line 25
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    goto :goto_2

    :cond_9
    const/16 v1, 0x41

    if-lt p1, v1, :cond_a

    const/16 v1, 0x46

    if-gt p1, v1, :cond_a

    add-int/lit8 p1, p1, -0x41

    add-int/lit8 p1, p1, 0xa

    add-int/2addr v0, p1

    .line 26
    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    .line 27
    :goto_2
    iget p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->h:I

    iput p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->i:I

    goto/16 :goto_0

    .line 28
    :cond_a
    new-instance p2, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid chunk length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->v0(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->v0(Ljava/lang/Exception;)V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected v0(Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->j:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    sget-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->g:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    if-eq v0, v1, :cond_0

    .line 2
    new-instance p1, Lcom/koushikdutta/async/http/filter/ChunkedDataException;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/ChunkedDataException;-><init>(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method
