.class final enum Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
.super Ljava/lang/Enum;
.source "ChunkedInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum b:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum d:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum e:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum f:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum g:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field public static final enum h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

.field private static final synthetic i:[Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_LEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->a:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 2
    new-instance v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v3, "CHUNK_LEN_CR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->b:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 3
    new-instance v3, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v5, "CHUNK_LEN_CRLF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->c:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 4
    new-instance v5, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v7, "CHUNK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->d:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 5
    new-instance v7, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v9, "CHUNK_CR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->e:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 6
    new-instance v9, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v11, "CHUNK_CRLF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->f:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 7
    new-instance v11, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v13, "COMPLETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->g:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    .line 8
    new-instance v13, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const-string v15, "ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->h:Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->i:[Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
    .locals 1

    const-class v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->i:[Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/filter/ChunkedInputFilter$State;

    return-object v0
.end method
