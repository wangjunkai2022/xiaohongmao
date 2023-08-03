.class public Lcom/fasterxml/jackson/core/json/g;
.super Lcom/fasterxml/jackson/core/base/b;
.source "ReaderBasedJsonParser.java"


# static fields
.field private static final m3:I

.field private static final n3:I

.field private static final o3:I

.field private static final p3:I

.field private static final q3:I

.field private static final r3:I

.field private static final s3:I

.field private static final t3:I

.field protected static final u3:[I


# instance fields
.field protected c3:Ljava/io/Reader;

.field protected d3:[C

.field protected e3:Z

.field protected f3:Lcom/fasterxml/jackson/core/h;

.field protected final g3:Lcom/fasterxml/jackson/core/sym/b;

.field protected final h3:I

.field protected i3:Z

.field protected j3:J

.field protected k3:I

.field protected l3:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/g;->m3:I

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/g;->n3:I

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/g;->o3:I

    .line 4
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/g;->p3:I

    .line 5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/g;->q3:I

    .line 6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/g;->r3:I

    .line 7
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/g;->s3:I

    .line 8
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I

    move-result v0

    sput v0, Lcom/fasterxml/jackson/core/json/g;->t3:I

    .line 9
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->h()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/g;->u3:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/Reader;Lcom/fasterxml/jackson/core/h;Lcom/fasterxml/jackson/core/sym/b;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/b;-><init>(Lcom/fasterxml/jackson/core/io/d;I)V

    .line 13
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/g;->c3:Ljava/io/Reader;

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/d;->j()[C

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 16
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    .line 17
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/g;->f3:Lcom/fasterxml/jackson/core/h;

    .line 18
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    .line 19
    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/sym/b;->o()I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/g;->h3:I

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/g;->e3:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/d;ILjava/io/Reader;Lcom/fasterxml/jackson/core/h;Lcom/fasterxml/jackson/core/sym/b;[CIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/b;-><init>(Lcom/fasterxml/jackson/core/io/d;I)V

    .line 2
    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/g;->c3:Ljava/io/Reader;

    .line 3
    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/g;->f3:Lcom/fasterxml/jackson/core/h;

    .line 4
    iput-object p6, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    .line 5
    iput p7, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 6
    iput p8, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    .line 7
    iput p7, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    neg-int p1, p7

    int-to-long p1, p1

    .line 8
    iput-wide p1, p0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    .line 9
    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    .line 10
    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/sym/b;->o()I

    move-result p1

    iput p1, p0, Lcom/fasterxml/jackson/core/json/g;->h3:I

    .line 11
    iput-boolean p9, p0, Lcom/fasterxml/jackson/core/json/g;->e3:Z

    return-void
.end method

.method private final C3()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v0, 0x4

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    .line 4
    aget-char v2, v1, v0

    const/16 v4, 0x61

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x73

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x65

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    .line 5
    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 6
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return-void

    :cond_1
    const-string v0, "false"

    .line 7
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    return-void
.end method

.method private final D3()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v0, 0x3

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    .line 4
    aget-char v2, v1, v0

    const/16 v4, 0x75

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x6c

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    .line 5
    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 6
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return-void

    :cond_1
    const-string v0, "null"

    .line 7
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    return-void
.end method

.method private final F3(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v1, v1, v2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->S3(Ljava/lang/String;)V

    .line 5
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 6
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/g;->o3(Ljava/lang/String;II)V

    :cond_5
    return-void
.end method

.method private final G3()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v0, 0x3

    .line 2
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    .line 4
    aget-char v2, v1, v0

    const/16 v4, 0x72

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x75

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    aget-char v2, v1, v0

    const/16 v4, 0x65

    if-ne v2, v4, :cond_1

    add-int/2addr v0, v3

    .line 5
    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    .line 6
    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return-void

    :cond_1
    const-string v0, "true"

    .line 7
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    return-void
.end method

.method private final H3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/d;->u(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/d;->v(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 8
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method private final I3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x22

    if-ne p1, v1, :cond_0

    .line 1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 2
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_0
    const/16 v1, 0x5b

    if-eq p1, v1, :cond_6

    const/16 v1, 0x66

    if-eq p1, v1, :cond_5

    const/16 v1, 0x6e

    if-eq p1, v1, :cond_4

    const/16 v1, 0x74

    if-eq p1, v1, :cond_3

    const/16 v1, 0x7b

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->Q3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->L3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->O3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 6
    :pswitch_3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/f;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v2, Lcom/fasterxml/jackson/core/json/g;->p3:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 8
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 9
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->x3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/json/d;->v(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 12
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_3
    const-string p1, "true"

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 14
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_4
    const-string p1, "null"

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 16
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_5
    const-string p1, "false"

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 18
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/json/d;->u(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 20
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final K3(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/16 v1, 0x39

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x2e

    if-ne p1, v4, :cond_4

    const/4 p1, 0x0

    :goto_0
    if-lt p3, v0, :cond_0

    .line 2
    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v5, p3, 0x1

    aget-char p3, v4, p3

    if-lt p3, v2, :cond_2

    if-le p3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    move p3, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    const-string v4, "Decimal point not followed by a digit"

    .line 4
    invoke-virtual {p0, p3, v4}, Lcom/fasterxml/jackson/core/base/c;->z2(ILjava/lang/String;)V

    :cond_3
    move v7, p3

    move p3, p1

    move p1, v7

    goto :goto_2

    :cond_4
    move v5, p3

    const/4 p3, 0x0

    :goto_2
    const/16 v4, 0x65

    if-eq p1, v4, :cond_5

    const/16 v4, 0x45

    if-ne p1, v4, :cond_c

    :cond_5
    if-lt v5, v0, :cond_6

    .line 5
    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 6
    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 7
    :cond_6
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v4, v5, 0x1

    aget-char v5, p1, v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_8

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_7

    goto :goto_4

    :cond_7
    move p1, v5

    :goto_3
    move v5, v4

    goto :goto_5

    :cond_8
    :goto_4
    if-lt v4, v0, :cond_9

    .line 8
    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 9
    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_9
    add-int/lit8 v5, v4, 0x1

    .line 10
    aget-char p1, p1, v4

    :goto_5
    if-gt p1, v1, :cond_b

    if-lt p1, v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    if-lt v5, v0, :cond_a

    .line 11
    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 12
    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 13
    :cond_a
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v4, v5, 0x1

    aget-char p1, p1, v5

    goto :goto_3

    :cond_b
    if-nez v3, :cond_c

    const-string v0, "Exponent indicator not followed by a digit"

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/c;->z2(ILjava/lang/String;)V

    :cond_c
    add-int/lit8 v5, v5, -0x1

    .line 15
    iput v5, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 16
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->m()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->l4(I)V

    :cond_d
    sub-int/2addr v5, p2

    .line 18
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    invoke-virtual {p1, v0, p2, v5}, Lcom/fasterxml/jackson/core/util/j;->F([CII)V

    .line 19
    invoke-virtual {p0, p4, p5, p3, v3}, Lcom/fasterxml/jackson/core/base/b;->m3(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private N3(III)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/j;->F([CII)V

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->v()[C

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->w()I

    move-result v0

    .line 4
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v1, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v2, " in field name"

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v1, v1, v2

    const/16 v2, 0x5c

    if-gt v1, v2, :cond_3

    if-ne v1, v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->F2()C

    move-result v1

    goto :goto_1

    :cond_1
    if-gt v1, p3, :cond_3

    if-ne v1, p3, :cond_2

    .line 9
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/j;->J(I)V

    .line 10
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->x()[C

    move-result-object p3

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->y()I

    move-result v0

    .line 13
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->K()I

    move-result p1

    .line 14
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    invoke-virtual {v1, p3, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/b;->n([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x20

    if-ge v1, v2, :cond_3

    const-string v2, "name"

    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/core/base/b;->T2(ILjava/lang/String;)V

    :cond_3
    :goto_1
    mul-int/lit8 p2, p2, 0x21

    add-int/2addr p2, v1

    add-int/lit8 v2, v0, 0x1

    .line 16
    aput-char v1, p1, v0

    .line 17
    array-length v0, p1

    if-lt v2, v0, :cond_4

    .line 18
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private final P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1
    :cond_0
    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 2
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object p2

    const/16 v0, 0x2d

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 3
    aput-char v0, p2, v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v5, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v4, v5, v4

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "No digit following minus sign"

    .line 5
    invoke-virtual {p0, v5, v4}, Lcom/fasterxml/jackson/core/json/g;->n4(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)C

    move-result v4

    :goto_1
    const/16 v5, 0x30

    if-ne v4, v5, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->k4()C

    move-result v4

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const/16 v7, 0x39

    if-lt v4, v5, :cond_6

    if-gt v4, v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    .line 7
    array-length v8, p2

    if-lt v3, v8, :cond_4

    .line 8
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object p2

    const/4 v3, 0x0

    :cond_4
    add-int/lit8 v8, v3, 0x1

    .line 9
    aput-char v4, p2, v3

    .line 10
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v3, v4, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v8

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto :goto_3

    .line 11
    :cond_5
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v4, v3, v4

    move v3, v8

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-nez v6, :cond_7

    .line 12
    invoke-virtual {p0, v4, p1}, Lcom/fasterxml/jackson/core/json/g;->u3(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v9, 0x2e

    if-ne v4, v9, :cond_d

    .line 13
    array-length v9, p2

    if-lt v3, v9, :cond_8

    .line 14
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object p2

    const/4 v3, 0x0

    :cond_8
    add-int/lit8 v9, v3, 0x1

    .line 15
    aput-char v4, p2, v3

    move v3, v9

    const/4 v9, 0x0

    .line 16
    :goto_4
    iget v10, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v11, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v10, v11, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v8, 0x1

    goto :goto_5

    .line 17
    :cond_9
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v10, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v4, v4, v10

    if-lt v4, v5, :cond_c

    if-le v4, v7, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 18
    array-length v10, p2

    if-lt v3, v10, :cond_b

    .line 19
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object p2

    const/4 v3, 0x0

    :cond_b
    add-int/lit8 v10, v3, 0x1

    .line 20
    aput-char v4, p2, v3

    move v3, v10

    goto :goto_4

    :cond_c
    :goto_5
    if-nez v9, :cond_e

    const-string v10, "Decimal point not followed by a digit"

    .line 21
    invoke-virtual {p0, v4, v10}, Lcom/fasterxml/jackson/core/base/c;->z2(ILjava/lang/String;)V

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    :cond_e
    :goto_6
    const/16 v10, 0x65

    if-eq v4, v10, :cond_f

    const/16 v10, 0x45

    if-ne v4, v10, :cond_19

    .line 22
    :cond_f
    array-length v10, p2

    if-lt v3, v10, :cond_10

    .line 23
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object p2

    const/4 v3, 0x0

    :cond_10
    add-int/lit8 v10, v3, 0x1

    .line 24
    aput-char v4, p2, v3

    .line 25
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const-string v11, "expected a digit for number exponent"

    if-ge v3, v4, :cond_11

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v12, v3, 0x1

    iput v12, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v3, v4, v3

    goto :goto_7

    .line 26
    :cond_11
    invoke-virtual {p0, v11}, Lcom/fasterxml/jackson/core/json/g;->m4(Ljava/lang/String;)C

    move-result v3

    :goto_7
    if-eq v3, v0, :cond_13

    const/16 v0, 0x2b

    if-ne v3, v0, :cond_12

    goto :goto_9

    :cond_12
    :goto_8
    move v4, v3

    const/4 v0, 0x0

    goto :goto_b

    .line 27
    :cond_13
    :goto_9
    array-length v0, p2

    if-lt v10, v0, :cond_14

    .line 28
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object p2

    const/4 v10, 0x0

    :cond_14
    add-int/lit8 v0, v10, 0x1

    .line 29
    aput-char v3, p2, v10

    .line 30
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-ge v3, v4, :cond_15

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v10, v3, 0x1

    iput v10, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v3, v4, v3

    goto :goto_a

    .line 31
    :cond_15
    invoke-virtual {p0, v11}, Lcom/fasterxml/jackson/core/json/g;->m4(Ljava/lang/String;)C

    move-result v3

    :goto_a
    move v10, v0

    goto :goto_8

    :goto_b
    if-gt v4, v7, :cond_18

    if-lt v4, v5, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 32
    array-length v3, p2

    if-lt v10, v3, :cond_16

    .line 33
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object p2

    const/4 v10, 0x0

    :cond_16
    add-int/lit8 v3, v10, 0x1

    .line 34
    aput-char v4, p2, v10

    .line 35
    iget v10, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v11, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v10, v11, :cond_17

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v10

    if-nez v10, :cond_17

    move v1, v0

    const/4 v8, 0x1

    goto :goto_c

    .line 36
    :cond_17
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v10, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v4, v4, v10

    move v10, v3

    goto :goto_b

    :cond_18
    move v1, v0

    move v3, v10

    :goto_c
    if-nez v1, :cond_19

    const-string p2, "Exponent indicator not followed by a digit"

    .line 37
    invoke-virtual {p0, v4, p2}, Lcom/fasterxml/jackson/core/base/c;->z2(ILjava/lang/String;)V

    :cond_19
    if-nez v8, :cond_1a

    .line 38
    iget p2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 39
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->m()Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 40
    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/core/json/g;->l4(I)V

    .line 41
    :cond_1a
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/core/util/j;->J(I)V

    .line 42
    invoke-virtual {p0, p1, v6, v9, v1}, Lcom/fasterxml/jackson/core/base/b;->k3(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method private final U3()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/f;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->k(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0

    .line 3
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->b4()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_4

    .line 5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->g4()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 6
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 7
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    goto :goto_0

    :cond_6
    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    goto :goto_0

    :cond_7
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    goto :goto_0
.end method

.method private V3()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_4

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    const-string v1, " in a comment"

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return-void

    :cond_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 8
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    goto :goto_0
.end method

.method private final X3()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 2
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v2, v1, v0

    const/16 v4, 0x3a

    const/16 v5, 0x9

    const/16 v6, 0x23

    const/16 v7, 0x2f

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ne v2, v4, :cond_8

    add-int/2addr v0, v9

    .line 4
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v2, v1, v0

    if-le v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v9

    .line 5
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return v2

    .line 6
    :cond_2
    :goto_0
    invoke-direct {p0, v9}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result v0

    return v0

    :cond_3
    if-eq v2, v8, :cond_4

    if-ne v2, v5, :cond_7

    :cond_4
    add-int/2addr v0, v9

    .line 7
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v1, v1, v0

    if-le v1, v8, :cond_7

    if-eq v1, v7, :cond_6

    if-ne v1, v6, :cond_5

    goto :goto_1

    :cond_5
    add-int/2addr v0, v9

    .line 8
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return v1

    .line 9
    :cond_6
    :goto_1
    invoke-direct {p0, v9}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result v0

    return v0

    .line 10
    :cond_7
    invoke-direct {p0, v9}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result v0

    return v0

    :cond_8
    if-eq v2, v8, :cond_9

    if-ne v2, v5, :cond_a

    :cond_9
    add-int/2addr v0, v9

    .line 11
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v2, v1, v0

    :cond_a
    if-ne v2, v4, :cond_12

    .line 12
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v2, v1, v0

    if-le v2, v8, :cond_d

    if-eq v2, v7, :cond_c

    if-ne v2, v6, :cond_b

    goto :goto_2

    :cond_b
    add-int/2addr v0, v9

    .line 13
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return v2

    .line 14
    :cond_c
    :goto_2
    invoke-direct {p0, v9}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result v0

    return v0

    :cond_d
    if-eq v2, v8, :cond_e

    if-ne v2, v5, :cond_11

    :cond_e
    add-int/2addr v0, v9

    .line 15
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v1, v1, v0

    if-le v1, v8, :cond_11

    if-eq v1, v7, :cond_10

    if-ne v1, v6, :cond_f

    goto :goto_3

    :cond_f
    add-int/2addr v0, v9

    .line 16
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return v1

    .line 17
    :cond_10
    :goto_3
    invoke-direct {p0, v9}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result v0

    return v0

    .line 18
    :cond_11
    invoke-direct {p0, v9}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result v0

    return v0

    .line 19
    :cond_12
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result v0

    return v0
.end method

.method private final Y3(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " within/between "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " entries"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-le v1, v2, :cond_7

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->b4()V

    goto :goto_0

    :cond_3
    const/16 v2, 0x23

    if-ne v1, v2, :cond_4

    .line 5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->g4()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    return v1

    :cond_5
    const/16 p1, 0x3a

    if-eq v1, p1, :cond_6

    const-string p1, "was expecting a colon to separate field name and value"

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    if-ge v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 7
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 8
    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    goto :goto_0

    :cond_8
    const/16 v2, 0xd

    if-ne v1, v2, :cond_9

    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    goto :goto_0

    :cond_9
    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 10
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    goto :goto_0
.end method

.method private final Z3(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v1, p1, 0x1

    aget-char p1, v0, p1

    const/16 v2, 0x3a

    const/16 v3, 0x9

    const/16 v4, 0x23

    const/16 v5, 0x2f

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ne p1, v2, :cond_4

    add-int/lit8 p1, v1, 0x1

    .line 2
    aget-char v1, v0, v1

    if-le v1, v6, :cond_0

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    .line 3
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return v1

    :cond_0
    if-eq v1, v6, :cond_1

    if-ne v1, v3, :cond_3

    :cond_1
    add-int/lit8 v1, p1, 0x1

    .line 4
    aget-char p1, v0, p1

    if-le p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_2

    .line 5
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return p1

    :cond_2
    move p1, v1

    :cond_3
    sub-int/2addr p1, v7

    .line 6
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 7
    invoke-direct {p0, v7}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result p1

    return p1

    :cond_4
    if-eq p1, v6, :cond_5

    if-ne p1, v3, :cond_6

    :cond_5
    add-int/lit8 p1, v1, 0x1

    .line 8
    aget-char v1, v0, v1

    move v8, v1

    move v1, p1

    move p1, v8

    :cond_6
    if-ne p1, v2, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_b

    add-int/lit8 v2, v1, 0x1

    .line 9
    aget-char v1, v0, v1

    if-le v1, v6, :cond_8

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_9

    .line 10
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return v1

    :cond_8
    if-eq v1, v6, :cond_a

    if-ne v1, v3, :cond_9

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_2

    :cond_a
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .line 11
    aget-char v0, v0, v2

    if-le v0, v6, :cond_b

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_b

    .line 12
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return v0

    :cond_b
    :goto_2
    sub-int/2addr v1, v7

    .line 13
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 14
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->Y3(Z)I

    move-result p1

    return p1
.end method

.method private final a4(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "was expecting comma to separate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/f;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    .line 2
    :cond_0
    :goto_0
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-ge p1, v0, :cond_6

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char p1, v0, p1

    const/16 v0, 0x20

    if-le p1, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    return p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 4
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->U3()I

    move-result p1

    return p1

    :cond_3
    if-ge p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 6
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 7
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    goto :goto_0

    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    .line 9
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    goto :goto_0

    .line 10
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->U3()I

    move-result p1

    return p1
.end method

.method private b4()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v1, Lcom/fasterxml/jackson/core/json/g;->s3:I

    and-int/2addr v0, v1

    const/16 v1, 0x2f

    if-nez v0, :cond_0

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v2, " in a comment"

    .line 4
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->c4()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->V3()V

    goto :goto_0

    :cond_3
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private c4()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 4
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    goto :goto_0
.end method

.method private final e4()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->G2()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v1, 0x23

    const/16 v3, 0x2f

    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 5
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->f4()I

    move-result v0

    return v0

    :cond_3
    const/16 v5, 0x9

    const/16 v6, 0xd

    const/16 v7, 0xa

    if-eq v0, v4, :cond_6

    if-ne v0, v7, :cond_4

    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 8
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    goto :goto_1

    :cond_4
    if-ne v0, v6, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    goto :goto_1

    :cond_5
    if-eq v0, v5, :cond_6

    .line 10
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    .line 11
    :cond_6
    :goto_1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-ge v0, v2, :cond_c

    .line 12
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v8, v0, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v2, v0

    if-le v0, v4, :cond_9

    if-eq v0, v3, :cond_8

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    return v0

    :cond_8
    :goto_2
    add-int/lit8 v8, v8, -0x1

    .line 13
    iput v8, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 14
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->f4()I

    move-result v0

    return v0

    :cond_9
    if-eq v0, v4, :cond_6

    if-ne v0, v7, :cond_a

    .line 15
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 16
    iput v8, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    goto :goto_1

    :cond_a
    if-ne v0, v6, :cond_b

    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    goto :goto_1

    :cond_b
    if-eq v0, v5, :cond_6

    .line 18
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    goto :goto_1

    .line 19
    :cond_c
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->f4()I

    move-result v0

    return v0
.end method

.method private f4()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->G2()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-le v0, v1, :cond_4

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->b4()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->g4()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 8
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 10
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->q2(I)V

    goto :goto_0
.end method

.method private g4()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v1, Lcom/fasterxml/jackson/core/json/g;->t3:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->c4()V

    const/4 v0, 0x1

    return v0
.end method

.method private final h4()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 2
    iget-wide v1, p0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fasterxml/jackson/core/base/b;->H2:J

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    return-void
.end method

.method private final i4()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    int-to-long v1, v0

    .line 2
    iput-wide v1, p0, Lcom/fasterxml/jackson/core/json/g;->j3:J

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/g;->k3:I

    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/g;->l3:I

    return-void
.end method

.method private j4()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/16 v2, 0x30

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    if-lt v0, v2, :cond_8

    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget v3, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v4, Lcom/fasterxml/jackson/core/json/g;->n3:I

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    const-string v3, "Leading zeroes not allowed"

    .line 4
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/base/c;->s2(Ljava/lang/String;)V

    .line 5
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    if-ne v0, v2, :cond_7

    .line 6
    :cond_3
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v3

    if-lt v0, v2, :cond_6

    if-le v0, v1, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 8
    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_6
    :goto_0
    return v2

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return v2
.end method

.method private final k4()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v0, v1, v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->j4()C

    move-result v0

    return v0
.end method

.method private final l4(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->n2(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->W3()V

    return-void

    .line 4
    :cond_1
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 5
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    :cond_2
    return-void
.end method

.method private final o3(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-char p3, p3

    .line 1
    invoke-static {p3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->S3(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private p3(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x7d

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_1

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->h4()V

    .line 2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/b;->R2(IC)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/json/d;->t()Lcom/fasterxml/jackson/core/json/d;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 5
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_1
    if-ne p1, v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->h4()V

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/base/b;->R2(IC)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/d;->t()Lcom/fasterxml/jackson/core/json/d;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 10
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    :cond_3
    return-void
.end method

.method private w3(II[I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/j;->F([CII)V

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->v()[C

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->w()I

    move-result v0

    .line 4
    array-length v1, p3

    .line 5
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v2, v3, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v2, v2, v3

    if-ge v2, v1, :cond_1

    .line 8
    aget v3, p3, v2

    if-eqz v3, :cond_2

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/j;->J(I)V

    .line 11
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    .line 12
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->x()[C

    move-result-object p3

    .line 13
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->y()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->K()I

    move-result p1

    .line 15
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    invoke-virtual {v1, p3, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/b;->n([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    mul-int/lit8 p2, p2, 0x21

    add-int/2addr p2, v2

    add-int/lit8 v3, v0, 0x1

    .line 17
    aput-char v2, p1, v0

    .line 18
    array-length v0, p1

    if-lt v3, v0, :cond_3

    .line 19
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private final z3(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->h4()V

    const/16 v0, 0x22

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x66

    if-eq p1, v0, :cond_5

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x74

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->x3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    .line 4
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->Q3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->L3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->O3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    .line 7
    :cond_2
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    :cond_3
    const-string p1, "true"

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 9
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    :cond_4
    const-string p1, "null"

    .line 10
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 11
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    :cond_5
    const-string p1, "false"

    .line 12
    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 13
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    .line 14
    :cond_6
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    .line 15
    :cond_7
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 16
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected A3()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->c3:Ljava/io/Reader;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    .line 4
    iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    .line 5
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    .line 6
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/g;->j3:J

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/g;->j3:J

    .line 7
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 8
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/4 v0, 0x1

    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->B2()V

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method protected B2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->c3:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/d;->r()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->m1(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->c3:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->c3:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method protected B3()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/c;->i2()V

    :cond_0
    return-void
.end method

.method public D1(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/d;->d()[B

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/g;->R3(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/io/d;->s([B)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/io/d;->s([B)V

    .line 5
    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 8
    array-length p1, p1

    return p1
.end method

.method public E0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->c3:Ljava/io/Reader;

    return-object v0
.end method

.method protected final E3(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v1, v2, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/json/g;->F3(Ljava/lang/String;I)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->S3(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_2

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/core/json/g;->o3(Ljava/lang/String;II)V

    :cond_2
    return-void
.end method

.method protected F2()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const-string v2, " in character escape sequence"

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_a

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_a

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_a

    const/16 v1, 0x62

    if-eq v0, v1, :cond_9

    const/16 v1, 0x66

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_7

    const/16 v1, 0x72

    if-eq v0, v1, :cond_6

    const/16 v1, 0x74

    if-eq v0, v1, :cond_5

    const/16 v1, 0x75

    if-eq v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/b;->L2(C)C

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    .line 6
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v3, v4, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 9
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v3, v3, v4

    .line 10
    invoke-static {v3}, Lcom/fasterxml/jackson/core/io/b;->b(I)I

    move-result v4

    if-gez v4, :cond_3

    const-string v5, "expected a hex-digit for character escape sequence"

    .line 11
    invoke-virtual {p0, v3, v5}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    :cond_3
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    int-to-char v0, v1

    return v0

    :cond_5
    const/16 v0, 0x9

    return v0

    :cond_6
    const/16 v0, 0xd

    return v0

    :cond_7
    const/16 v0, 0xa

    return v0

    :cond_8
    const/16 v0, 0xc

    return v0

    :cond_9
    const/16 v0, 0x8

    :cond_a
    return v0
.end method

.method protected final H2()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-ge v0, v1, :cond_2

    .line 3
    sget-object v2, Lcom/fasterxml/jackson/core/json/g;->u3:[I

    .line 4
    array-length v3, v2

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v5, v4, v0

    if-ge v5, v3, :cond_1

    .line 6
    aget v6, v2, v5

    if-eqz v6, :cond_1

    const/16 v1, 0x22

    if-ne v5, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int v3, v0, v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/fasterxml/jackson/core/util/j;->F([CII)V

    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int v4, v0, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/util/j;->D([CII)V

    .line 10
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->r3()V

    return-void
.end method

.method protected J3()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/g;->h3:I

    .line 3
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/16 v3, 0x27

    if-ge v0, v2, :cond_3

    .line 4
    sget-object v4, Lcom/fasterxml/jackson/core/json/g;->u3:[I

    .line 5
    array-length v5, v4

    .line 6
    :cond_0
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v7, v6, v0

    if-ne v7, v3, :cond_1

    .line 7
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v0, 0x1

    .line 8
    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 9
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v6, v2, v0, v1}, Lcom/fasterxml/jackson/core/sym/b;->n([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-ge v7, v5, :cond_2

    .line 10
    aget v6, v4, v7

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x21

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_0

    .line 11
    :cond_3
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 12
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 13
    invoke-direct {p0, v2, v1, v3}, Lcom/fasterxml/jackson/core/json/g;->N3(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L1(Ljava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int v2, v1, v0

    .line 2
    iput v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/Writer;->write([CII)V

    return v0
.end method

.method protected final L3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/json/JsonReadFeature;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->m1(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->x3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x2e

    .line 3
    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/g;->K3(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected final M3()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/g;->h3:I

    .line 3
    sget-object v2, Lcom/fasterxml/jackson/core/json/g;->u3:[I

    .line 4
    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/16 v4, 0x22

    if-ge v0, v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v5, v3, v0

    .line 6
    array-length v6, v2

    if-ge v5, v6, :cond_0

    aget v6, v2, v5

    if-eqz v6, :cond_0

    if-ne v5, v4, :cond_1

    .line 7
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v4, v0, 0x1

    .line 8
    iput v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 9
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    sub-int/2addr v0, v2

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/fasterxml/jackson/core/sym/b;->n([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    mul-int/lit8 v1, v1, 0x21

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 11
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 12
    invoke-direct {p0, v2, v1, v4}, Lcom/fasterxml/jackson/core/json/g;->N3(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N1(Lcom/fasterxml/jackson/core/h;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->f3:Lcom/fasterxml/jackson/core/h;

    return-void
.end method

.method public O0()Lcom/fasterxml/jackson/core/util/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/core/util/f<",
            "Lcom/fasterxml/jackson/core/StreamReadCapability;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/core/base/b;->b3:Lcom/fasterxml/jackson/core/util/f;

    return-object v0
.end method

.method protected final O3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v0, -0x1

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 3
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v5, v0, 0x1

    aget-char v0, v4, v0

    const/16 v4, 0x39

    if-gt v0, v4, :cond_9

    const/16 v6, 0x30

    if-ge v0, v6, :cond_1

    goto :goto_3

    :cond_1
    if-ne v0, v6, :cond_2

    .line 5
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-lt v5, v1, :cond_3

    .line 6
    invoke-direct {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 7
    :cond_3
    iget-object v7, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v8, v5, 0x1

    aget-char v5, v7, v5

    if-lt v5, v6, :cond_5

    if-le v5, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v5, v8

    goto :goto_0

    :cond_5
    :goto_1
    const/16 v1, 0x2e

    if-eq v5, v1, :cond_8

    const/16 v1, 0x65

    if-eq v5, v1, :cond_8

    const/16 v1, 0x45

    if-ne v5, v1, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, -0x1

    .line 8
    iput v8, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/f;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/g;->l4(I)V

    :cond_7
    sub-int/2addr v8, v3

    .line 11
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    invoke-virtual {v1, v4, v3, v8}, Lcom/fasterxml/jackson/core/util/j;->F([CII)V

    .line 12
    invoke-virtual {p0, v2, v0}, Lcom/fasterxml/jackson/core/base/b;->n3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 13
    :cond_8
    :goto_2
    iput v8, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    const/4 v6, 0x1

    move-object v1, p0

    move v2, v5

    move v4, v8

    move v5, v6

    move v6, v0

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/g;->K3(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    .line 15
    :cond_9
    :goto_3
    iput v5, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 16
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/g;->u3(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method protected Q2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/b;->Q2()V

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/b;->u()V

    .line 3
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->e3:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    .line 6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/d;->w([C)V

    :cond_0
    return-void
.end method

.method protected final Q3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v0, -0x1

    .line 2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    const/16 v2, 0x30

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    .line 3
    invoke-direct {p0, v4, v3}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    const/4 v6, 0x1

    :goto_0
    if-lt v0, v1, :cond_1

    .line 4
    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 5
    invoke-direct {p0, v4, v3}, Lcom/fasterxml/jackson/core/json/g;->P3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    add-int/lit8 v5, v0, 0x1

    aget-char p1, p1, v0

    if-lt p1, v2, :cond_3

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move v0, v5

    goto :goto_0

    :cond_3
    :goto_1
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x65

    if-eq p1, v0, :cond_6

    const/16 v0, 0x45

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 7
    iput v5, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->l4(I)V

    :cond_5
    sub-int/2addr v5, v3

    .line 10
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    invoke-virtual {p1, v0, v3, v5}, Lcom/fasterxml/jackson/core/util/j;->F([CII)V

    .line 11
    invoke-virtual {p0, v4, v6}, Lcom/fasterxml/jackson/core/base/b;->n3(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 12
    :cond_6
    :goto_2
    iput v5, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    const/4 v0, 0x0

    move-object v1, p0

    move v2, p1

    move v4, v5

    move v5, v0

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/core/json/g;->K3(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1
.end method

.method public R0(Ljava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/j;->m(Ljava/io/Writer;)I

    move-result p1

    return p1

    .line 7
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/util/j;->m(Ljava/io/Writer;)I

    move-result p1

    return p1

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write([C)V

    .line 15
    array-length p1, v0

    return p1

    :cond_4
    return v2
.end method

.method protected R3(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;[B)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    array-length v4, v3

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2
    :goto_0
    iget v9, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v10, v0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v9, v10, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 4
    :cond_0
    iget-object v9, v0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v10, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v9, v9, v10

    const/16 v10, 0x20

    if-le v9, v10, :cond_15

    .line 5
    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v10

    const/16 v11, 0x22

    if-gez v10, :cond_2

    if-ne v9, v11, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-virtual {v0, v1, v9, v6}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v10

    if-gez v10, :cond_2

    goto/16 :goto_4

    :cond_2
    if-le v7, v4, :cond_3

    add-int/2addr v8, v7

    .line 7
    invoke-virtual {v2, v3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    const/4 v7, 0x0

    .line 8
    :cond_3
    iget v9, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v12, v0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v9, v12, :cond_4

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 10
    :cond_4
    iget-object v9, v0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v12, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v13, v12, 0x1

    iput v13, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v9, v9, v12

    .line 11
    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v12

    const/4 v13, 0x1

    if-gez v12, :cond_5

    .line 12
    invoke-virtual {v0, v1, v9, v13}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v12

    :cond_5
    shl-int/lit8 v9, v10, 0x6

    or-int/2addr v9, v12

    .line 13
    iget v10, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v12, v0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v10, v12, :cond_6

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 15
    :cond_6
    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v12, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v14, v12, 0x1

    iput v14, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v10, v10, v12

    .line 16
    invoke-virtual {v1, v10}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v12

    const/4 v14, 0x2

    const/4 v15, -0x2

    if-gez v12, :cond_d

    if-eq v12, v15, :cond_9

    if-ne v10, v11, :cond_8

    shr-int/lit8 v4, v9, 0x4

    add-int/lit8 v5, v7, 0x1

    int-to-byte v4, v4

    .line 17
    aput-byte v4, v3, v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19
    iget v4, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v4, v13

    iput v4, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 20
    invoke-virtual/range {p0 .. p1}, Lcom/fasterxml/jackson/core/base/b;->K2(Lcom/fasterxml/jackson/core/Base64Variant;)V

    :cond_7
    move v7, v5

    goto/16 :goto_2

    .line 21
    :cond_8
    invoke-virtual {v0, v1, v10, v14}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v10

    move v12, v10

    :cond_9
    if-ne v12, v15, :cond_d

    .line 22
    iget v10, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v11, v0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v10, v11, :cond_a

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 24
    :cond_a
    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v11, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v10, v10, v11

    .line 25
    invoke-virtual {v1, v10}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v11

    if-nez v11, :cond_c

    .line 26
    invoke-virtual {v0, v1, v10, v5}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v11

    if-ne v11, v15, :cond_b

    goto :goto_1

    .line 27
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected padding character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v5, v2}, Lcom/fasterxml/jackson/core/base/b;->j3(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    :cond_c
    :goto_1
    shr-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v7, 0x1

    int-to-byte v9, v9

    .line 28
    aput-byte v9, v3, v7

    move v7, v10

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v9, v9, 0x6

    or-int/2addr v9, v12

    .line 29
    iget v10, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v12, v0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v10, v12, :cond_e

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 31
    :cond_e
    iget-object v10, v0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v12, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v5, v12, 0x1

    iput v5, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v5, v10, v12

    .line 32
    invoke-virtual {v1, v5}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v10

    if-gez v10, :cond_13

    if-eq v10, v15, :cond_12

    if-ne v5, v11, :cond_11

    shr-int/lit8 v4, v9, 0x2

    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    .line 33
    aput-byte v9, v3, v7

    add-int/lit8 v7, v5, 0x1

    int-to-byte v4, v4

    .line 34
    aput-byte v4, v3, v5

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 36
    iget v4, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v4, v13

    iput v4, v0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 37
    invoke-virtual/range {p0 .. p1}, Lcom/fasterxml/jackson/core/base/b;->K2(Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 38
    :cond_f
    :goto_2
    iput-boolean v6, v0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-lez v7, :cond_10

    add-int/2addr v8, v7

    .line 39
    invoke-virtual {v2, v3, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    :cond_10
    return v8

    :cond_11
    const/4 v11, 0x3

    .line 40
    invoke-virtual {v0, v1, v5, v11}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v5

    move v10, v5

    goto :goto_3

    :cond_12
    const/4 v11, 0x3

    :goto_3
    if-ne v10, v15, :cond_14

    shr-int/lit8 v5, v9, 0x2

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    .line 41
    aput-byte v10, v3, v7

    add-int/lit8 v7, v9, 0x1

    int-to-byte v5, v5

    .line 42
    aput-byte v5, v3, v9

    goto :goto_5

    :cond_13
    const/4 v11, 0x3

    :cond_14
    shl-int/lit8 v5, v9, 0x6

    or-int/2addr v5, v10

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, v5, 0x10

    int-to-byte v10, v10

    .line 43
    aput-byte v10, v3, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    .line 44
    aput-byte v10, v3, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte v5, v5

    .line 45
    aput-byte v5, v3, v7

    move v7, v9

    goto :goto_5

    :cond_15
    :goto_4
    const/4 v11, 0x3

    :goto_5
    const/4 v5, 0x3

    goto/16 :goto_0
.end method

.method public final S0()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->s3(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected S3(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->U2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/g;->T3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final T0()[C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->x()[C

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 11
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    if-nez v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/b;->g2:Lcom/fasterxml/jackson/core/io/d;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/core/io/d;->g(I)[C

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    goto :goto_0

    .line 13
    :cond_3
    array-length v3, v3

    if-ge v3, v1, :cond_4

    .line 14
    new-array v3, v1, [C

    iput-object v3, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    .line 15
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    invoke-virtual {v0, v2, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->N2:[C

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method protected T3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char p1, p1, v1

    .line 4
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v1, 0x100

    if-lt p1, v1, :cond_0

    const-string p1, "..."

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    const-string p1, "Unrecognized token \'%s\': was expecting %s"

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/core/base/c;->g2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final U0()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asCharArray()[C

    move-result-object v0

    array-length v0, v0

    return v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->K()I

    move-result v0

    return v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    :cond_3
    return v1
.end method

.method public final V0()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->y()I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public W0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 23

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const-wide/16 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget-wide v1, v0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    iget-wide v5, v0, Lcom/fasterxml/jackson/core/json/g;->j3:J

    sub-long/2addr v5, v3

    add-long v11, v1, v5

    .line 3
    new-instance v1, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v8

    const-wide/16 v9, -0x1

    iget v13, v0, Lcom/fasterxml/jackson/core/json/g;->k3:I

    iget v14, v0, Lcom/fasterxml/jackson/core/json/g;->l3:I

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v1

    .line 4
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v16

    const-wide/16 v17, -0x1

    iget-wide v5, v0, Lcom/fasterxml/jackson/core/base/b;->H2:J

    sub-long v19, v5, v3

    iget v2, v0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, v0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    move-object v15, v1

    move/from16 v21, v2

    move/from16 v22, v3

    invoke-direct/range {v15 .. v22}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v1
.end method

.method protected final W3()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v0, v0, v1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 3
    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    .line 5
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    return-void
.end method

.method protected final d4()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 2
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    .line 4
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    :goto_0
    if-lt v0, v1, :cond_1

    .line 5
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v1, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 8
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 9
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    :cond_1
    add-int/lit8 v3, v0, 0x1

    .line 10
    aget-char v0, v2, v0

    const/16 v4, 0x5c

    if-gt v0, v4, :cond_4

    if-ne v0, v4, :cond_2

    .line 11
    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->F2()C

    .line 13
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 14
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    goto :goto_0

    :cond_2
    const/16 v4, 0x22

    if-gt v0, v4, :cond_4

    if-ne v0, v4, :cond_3

    .line 15
    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    return-void

    :cond_3
    const/16 v4, 0x20

    if-ge v0, v4, :cond_4

    .line 16
    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    const-string v4, "string value"

    .line 17
    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/base/b;->T2(ILjava/lang/String;)V

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public final g1()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->u0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->h1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->u0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->h1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    :cond_0
    return-void
.end method

.method protected m4(Ljava/lang/String;)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/g;->n4(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)C

    move-result p1

    return p1
.end method

.method protected n4(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget p2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char p1, p1, p2

    return p1
.end method

.method public p0(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_2

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->q3(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to decode VALUE_STRING as base64 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->k(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->I2()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->S0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/base/c;->Y1(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/c;Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 11
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->E()[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    .line 12
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    return-object p1
.end method

.method protected q3(Lcom/fasterxml/jackson/core/Base64Variant;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->I2()Lcom/fasterxml/jackson/core/util/c;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v1, v1, v2

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v2

    const/16 v3, 0x22

    if-gez v2, :cond_3

    if-ne v1, v3, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->E()[B

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    if-gez v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v1, v4, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v1, v1, v4

    .line 11
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_5

    .line 12
    invoke-virtual {p0, p1, v1, v5}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v4

    :cond_5
    shl-int/lit8 v1, v2, 0x6

    or-int/2addr v1, v4

    .line 13
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v2, v4, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 15
    :cond_6
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v2, v2, v4

    .line 16
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, -0x2

    if-gez v4, :cond_d

    if-eq v4, v8, :cond_9

    if-ne v2, v3, :cond_8

    shr-int/lit8 v1, v1, 0x4

    .line 17
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    .line 18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 19
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 20
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/b;->K2(Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 21
    :cond_7
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->E()[B

    move-result-object p1

    return-object p1

    .line 22
    :cond_8
    invoke-virtual {p0, p1, v2, v7}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    move v4, v2

    :cond_9
    if-ne v4, v8, :cond_d

    .line 23
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v2, v3, :cond_a

    .line 24
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 25
    :cond_a
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v2, v2, v3

    .line 26
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPaddingChar(C)Z

    move-result v3

    if-nez v3, :cond_c

    .line 27
    invoke-virtual {p0, p1, v2, v6}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v3

    if-ne v3, v8, :cond_b

    goto :goto_1

    .line 28
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected padding character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->getPaddingChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v2, v6, v0}, Lcom/fasterxml/jackson/core/base/b;->j3(Lcom/fasterxml/jackson/core/Base64Variant;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_c
    :goto_1
    shr-int/lit8 v1, v1, 0x4

    .line 29
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->b(I)V

    goto/16 :goto_0

    :cond_d
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 30
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v2, v4, :cond_e

    .line 31
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->B3()V

    .line 32
    :cond_e
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v9, v4, 0x1

    iput v9, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v2, v2, v4

    .line 33
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->decodeBase64Char(C)I

    move-result v4

    if-gez v4, :cond_12

    if-eq v4, v8, :cond_11

    if-ne v2, v3, :cond_10

    shr-int/2addr v1, v7

    .line 34
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->i(I)V

    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/Base64Variant;->usesPadding()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 36
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/b;->K2(Lcom/fasterxml/jackson/core/Base64Variant;)V

    .line 38
    :cond_f
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/c;->E()[B

    move-result-object p1

    return-object p1

    .line 39
    :cond_10
    invoke-virtual {p0, p1, v2, v6}, Lcom/fasterxml/jackson/core/base/b;->D2(Lcom/fasterxml/jackson/core/Base64Variant;CI)I

    move-result v2

    move v4, v2

    :cond_11
    if-ne v4, v8, :cond_12

    shr-int/lit8 v1, v1, 0x2

    .line 40
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->i(I)V

    goto/16 :goto_0

    :cond_12
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v4

    .line 41
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/c;->h(I)V

    goto/16 :goto_0
.end method

.method protected r3()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->v()[C

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->w()I

    move-result v1

    .line 3
    sget-object v2, Lcom/fasterxml/jackson/core/json/g;->u3:[I

    .line 4
    array-length v3, v2

    .line 5
    :goto_0
    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v5, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v4, v5, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v5, v4}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v4, v4, v5

    if-ge v4, v3, :cond_3

    .line 9
    aget v5, v2, v4

    if-eqz v5, :cond_3

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    .line 10
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/j;->J(I)V

    return-void

    :cond_1
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->F2()C

    move-result v4

    goto :goto_1

    :cond_2
    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    const-string v5, "string value"

    .line 12
    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/base/b;->T2(ILjava/lang/String;)V

    .line 13
    :cond_3
    :goto_1
    array-length v5, v0

    if-lt v1, v5, :cond_4

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    add-int/lit8 v5, v1, 0x1

    .line 15
    aput-char v4, v0, v1

    move v1, v5

    goto :goto_0
.end method

.method public s0()Lcom/fasterxml/jackson/core/h;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/g;->f3:Lcom/fasterxml/jackson/core/h;

    return-object v0
.end method

.method public final s1()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 8
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 10
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/d;->u(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    goto :goto_0

    .line 12
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    .line 13
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/d;->v(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    :cond_3
    :goto_0
    return-object v2

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_5
    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 17
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_6
    return-object v2
.end method

.method protected final s3(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/json/d;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t0()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 9

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->G2:I

    sub-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->C2()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v2

    iget-wide v3, p0, Lcom/fasterxml/jackson/core/base/b;->E2:J

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    int-to-long v5, v1

    add-long/2addr v5, v3

    iget v7, p0, Lcom/fasterxml/jackson/core/base/b;->F2:I

    const-wide/16 v3, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JJII)V

    return-object v0
.end method

.method public t1()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->H3()Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->d4()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->e4()I

    move-result v0

    if-gez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->close()V

    .line 8
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 9
    :cond_2
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_10

    const/16 v4, 0x7d

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    .line 10
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/json/d;->y()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 11
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->a4(I)I

    move-result v0

    .line 12
    iget v5, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v6, Lcom/fasterxml/jackson/core/json/g;->m3:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_5

    if-eq v0, v3, :cond_4

    if-ne v0, v4, :cond_5

    .line 13
    :cond_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->p3(I)V

    return-object v2

    .line 14
    :cond_5
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/f;->l()Z

    move-result v3

    if-nez v3, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->h4()V

    .line 16
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->I3(I)Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 17
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->i4()V

    const/16 v2, 0x22

    if-ne v0, v2, :cond_7

    .line 18
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->M3()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->v3(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/json/d;->C(Ljava/lang/String;)V

    .line 20
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 21
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->X3()I

    move-result v1

    .line 22
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->h4()V

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 24
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_8
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_e

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_d

    const/16 v2, 0x66

    if-eq v1, v2, :cond_c

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_b

    const/16 v2, 0x74

    if-eq v1, v2, :cond_a

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_9

    packed-switch v1, :pswitch_data_0

    .line 25
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->x3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_1

    .line 26
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->Q3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_1

    .line 27
    :cond_9
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 28
    :cond_a
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->G3()V

    .line 29
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 30
    :cond_b
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->D3()V

    .line 31
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 32
    :cond_c
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->C3()V

    .line 33
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 34
    :cond_d
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 35
    :cond_e
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->L3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    goto :goto_1

    .line 36
    :cond_f
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->O3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 37
    :goto_1
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 38
    :cond_10
    :goto_2
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->p3(I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected t3()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->n()[C

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/j;->w()I

    move-result v1

    .line 3
    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v3, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/core/base/c;->k2(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char v2, v2, v3

    const/16 v3, 0x5c

    if-gt v2, v3, :cond_3

    if-ne v2, v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->F2()C

    move-result v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x27

    if-gt v2, v3, :cond_3

    if-ne v2, v3, :cond_2

    .line 8
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/j;->J(I)V

    .line 9
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_2
    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    const-string v3, "string value"

    .line 10
    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/base/b;->T2(ILjava/lang/String;)V

    .line 11
    :cond_3
    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_4

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->s()[C

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 13
    aput-char v2, v0, v1

    move v1, v3

    goto :goto_0
.end method

.method public u1(Lcom/fasterxml/jackson/core/j;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->H3()Lcom/fasterxml/jackson/core/JsonToken;

    return v0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->d4()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->e4()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->close()V

    .line 8
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return v0

    .line 9
    :cond_2
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_a

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_3

    goto/16 :goto_2

    .line 10
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/d;->y()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->a4(I)I

    move-result v1

    .line 12
    iget v4, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v5, Lcom/fasterxml/jackson/core/json/g;->m3:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    if-eq v1, v2, :cond_4

    if-ne v1, v3, :cond_5

    .line 13
    :cond_4
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->p3(I)V

    return v0

    .line 14
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/f;->l()Z

    move-result v2

    if-nez v2, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->h4()V

    .line 16
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->I3(I)Lcom/fasterxml/jackson/core/JsonToken;

    return v0

    .line 17
    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->i4()V

    const/16 v2, 0x22

    if-ne v1, v2, :cond_9

    .line 18
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->asQuotedChars()[C

    move-result-object v3

    .line 19
    array-length v4, v3

    .line 20
    iget v5, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int v6, v5, v4

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-ge v6, v7, :cond_9

    add-int/2addr v4, v5

    .line 21
    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v6, v6, v4

    if-ne v6, v2, :cond_9

    :goto_0
    if-ne v5, v4, :cond_7

    .line 22
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/d;->C(Ljava/lang/String;)V

    const/4 p1, 0x1

    add-int/2addr v5, p1

    .line 23
    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/json/g;->Z3(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->z3(I)V

    return p1

    .line 24
    :cond_7
    aget-char v2, v3, v0

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v6, v6, v5

    if-eq v2, v6, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_9
    :goto_1
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/j;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/core/json/g;->y3(ILjava/lang/String;)Z

    move-result p1

    return p1

    .line 26
    :cond_a
    :goto_2
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->p3(I)V

    return v0
.end method

.method protected u3(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x49

    if-ne p1, v0, :cond_8

    .line 1
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->m2(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char p1, p1, v0

    const/16 v0, 0x4e

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-string v5, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    const-string v6, "Non-standard token \'"

    const/4 v7, 0x3

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_1

    const-string v0, "-INF"

    goto :goto_0

    :cond_1
    const-string v0, "+INF"

    .line 5
    :goto_0
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 6
    iget v7, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v8, Lcom/fasterxml/jackson/core/json/g;->o3:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    .line 7
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/base/b;->l3(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_8

    if-eqz p2, :cond_5

    const-string v0, "-Infinity"

    goto :goto_2

    :cond_5
    const-string v0, "+Infinity"

    .line 9
    :goto_2
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 10
    iget v7, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v8, Lcom/fasterxml/jackson/core/json/g;->o3:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_7

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    move-wide v1, v3

    .line 11
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/base/b;->l3(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 12
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string p2, "expected digit (0-9) to follow minus sign, for valid numeric value"

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/c;->z2(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final v1(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->F0()I

    move-result p1

    return p1

    .line 8
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/d;->u(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/d;->v(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    :cond_2
    :goto_0
    return p1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->F0()I

    move-result p1

    :cond_4
    return p1
.end method

.method protected v3(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v1, Lcom/fasterxml/jackson/core/json/g;->q3:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->J3()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v1, Lcom/fasterxml/jackson/core/json/g;->r3:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    const-string v0, "was expecting double-quote to start field name"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/b;->i()[I

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v2, 0x1

    if-ge p1, v1, :cond_3

    .line 7
    aget v3, v0, p1

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    int-to-char v3, p1

    .line 8
    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    :goto_0
    if-nez v3, :cond_4

    const-string v3, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    .line 9
    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    .line 10
    :cond_4
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 11
    iget v3, p0, Lcom/fasterxml/jackson/core/json/g;->h3:I

    .line 12
    iget v4, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-ge p1, v4, :cond_8

    .line 13
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    aget-char v6, v5, p1

    if-ge v6, v1, :cond_6

    .line 14
    aget v7, v0, v6

    if-eqz v7, :cond_7

    .line 15
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v0, v2

    .line 16
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    sub-int/2addr p1, v0

    invoke-virtual {v1, v5, v0, p1, v3}, Lcom/fasterxml/jackson/core/sym/b;->n([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    int-to-char v5, v6

    .line 18
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 19
    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v0, v2

    .line 20
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 21
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/g;->g3:Lcom/fasterxml/jackson/core/sym/b;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    sub-int/2addr p1, v0

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/fasterxml/jackson/core/sym/b;->n([CIII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    mul-int/lit8 v3, v3, 0x21

    add-int/2addr v3, v6

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v4, :cond_5

    .line 22
    :cond_8
    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr v1, v2

    .line 23
    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 24
    invoke-direct {p0, v1, v3, v0}, Lcom/fasterxml/jackson/core/json/g;->w3(II[I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final w1(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->H0()J

    move-result-wide p1

    return-wide p1

    .line 8
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/d;->u(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v2, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/json/d;->v(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    :cond_2
    :goto_0
    return-wide p1

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->H0()J

    move-result-wide p1

    :cond_4
    return-wide p1
.end method

.method public final x1()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/base/b;->O2:Z

    .line 3
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 5
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 6
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    .line 7
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v1, :cond_0

    .line 8
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->H2()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->M2:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/j;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/d;->u(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    goto :goto_0

    .line 13
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/d;->v(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    :cond_3
    :goto_0
    return-object v2

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->y1()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->S0()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method protected x3(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x27

    if-eq p1, v0, :cond_8

    const/16 v0, 0x49

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/16 v0, 0x4e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 1
    :cond_0
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->y2:I

    if-lt p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->A3()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/base/c;->m2(Lcom/fasterxml/jackson/core/JsonToken;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/fasterxml/jackson/core/json/g;->d3:[C

    iget v0, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    aget-char p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/g;->u3(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->k()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/f;->m()Z

    move-result v0

    if-nez v0, :cond_9

    .line 7
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v2, Lcom/fasterxml/jackson/core/json/g;->p3:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    .line 8
    iget p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/core/base/b;->x2:I

    .line 9
    sget-object p1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    return-object p1

    :cond_4
    const-string v0, "NaN"

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 11
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v2, Lcom/fasterxml/jackson/core/json/g;->o3:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/base/b;->l3(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 13
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "Infinity"

    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/g;->E3(Ljava/lang/String;I)V

    .line 15
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v2, Lcom/fasterxml/jackson/core/json/g;->o3:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 16
    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/base/b;->l3(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    .line 17
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/base/c;->e2(Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_8
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v1, Lcom/fasterxml/jackson/core/json/g;->q3:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 19
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->t3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    return-object p1

    .line 20
    :cond_9
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->U2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/g;->T3(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected a valid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->V2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final y1()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->H3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/fasterxml/jackson/core/base/b;->R2:I

    .line 4
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->d4()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->e4()I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/base/b;->close()V

    .line 8
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v2

    .line 9
    :cond_2
    iput-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->Q2:[B

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_14

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_3

    goto/16 :goto_3

    .line 10
    :cond_3
    iget-object v4, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/d;->y()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->a4(I)I

    move-result v0

    .line 12
    iget v4, p0, Lcom/fasterxml/jackson/core/JsonParser;->a:I

    sget v5, Lcom/fasterxml/jackson/core/json/g;->m3:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    if-eq v0, v2, :cond_4

    if-ne v0, v3, :cond_5

    .line 13
    :cond_4
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->p3(I)V

    .line 14
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 15
    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/f;->l()Z

    move-result v2

    const/16 v4, 0x22

    if-eqz v2, :cond_7

    .line 16
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->i4()V

    if-ne v0, v4, :cond_6

    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->M3()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->v3(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/core/json/d;->C(Ljava/lang/String;)V

    .line 19
    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 20
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->X3()I

    move-result v0

    .line 21
    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->h4()V

    if-eq v0, v4, :cond_12

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_10

    const/16 v1, 0x66

    if-eq v0, v1, :cond_f

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_e

    const/16 v1, 0x74

    if-eq v0, v1, :cond_d

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_b

    if-eq v0, v3, :cond_a

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_0

    .line 22
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->x3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 23
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->Q3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 24
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->L3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->O3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_a
    const-string v1, "expected a value"

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/base/c;->o2(ILjava/lang/String;)V

    goto :goto_1

    :cond_b
    if-nez v2, :cond_c

    .line 27
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/d;->v(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 28
    :cond_c
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    .line 29
    :cond_d
    :goto_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->G3()V

    .line 30
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    .line 31
    :cond_e
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->D3()V

    .line 32
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    .line 33
    :cond_f
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->C3()V

    .line 34
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_10
    if-nez v2, :cond_11

    .line 35
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    iget v1, p0, Lcom/fasterxml/jackson/core/base/b;->I2:I

    iget v3, p0, Lcom/fasterxml/jackson/core/base/b;->J2:I

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/core/json/d;->u(II)Lcom/fasterxml/jackson/core/json/d;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    .line 36
    :cond_11
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :cond_12
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 38
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    :goto_2
    if-eqz v2, :cond_13

    .line 39
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 40
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 41
    :cond_13
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    .line 42
    :cond_14
    :goto_3
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/g;->p3(I)V

    .line 43
    iget-object v0, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected y3(ILjava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->M3()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/g;->v3(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/base/b;->K2:Lcom/fasterxml/jackson/core/json/d;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/json/d;->C(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v1, p0, Lcom/fasterxml/jackson/core/base/c;->h:Lcom/fasterxml/jackson/core/JsonToken;

    .line 4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->X3()I

    move-result v1

    .line 5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->h4()V

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/g;->i3:Z

    .line 7
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/16 v0, 0x2d

    if-eq v1, v0, :cond_8

    const/16 v0, 0x2e

    if-eq v1, v0, :cond_7

    const/16 v0, 0x5b

    if-eq v1, v0, :cond_6

    const/16 v0, 0x66

    if-eq v1, v0, :cond_5

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_4

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    const/16 v0, 0x7b

    if-eq v1, v0, :cond_2

    packed-switch v1, :pswitch_data_0

    .line 9
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->x3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/g;->Q3(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->G3()V

    .line 13
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->D3()V

    .line 15
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 16
    :cond_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/g;->C3()V

    .line 17
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 18
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->L3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/g;->O3()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 21
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/core/base/b;->L2:Lcom/fasterxml/jackson/core/JsonToken;

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
