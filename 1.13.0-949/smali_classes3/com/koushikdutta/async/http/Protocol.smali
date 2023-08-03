.class public enum Lcom/koushikdutta/async/http/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/koushikdutta/async/http/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_2:Lcom/koushikdutta/async/http/Protocol;

.field public static final enum SPDY_3:Lcom/koushikdutta/async/http/Protocol;

.field private static final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/koushikdutta/async/http/Protocol;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/koushikdutta/async/http/Protocol;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_0:Lcom/koushikdutta/async/http/Protocol;

    .line 2
    new-instance v1, Lcom/koushikdutta/async/http/Protocol;

    const-string v3, "HTTP_1_1"

    const/4 v4, 0x1

    const-string v5, "http/1.1"

    invoke-direct {v1, v3, v4, v5}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    .line 3
    new-instance v3, Lcom/koushikdutta/async/http/Protocol$1;

    const-string v5, "SPDY_3"

    const/4 v6, 0x2

    const-string v7, "spdy/3.1"

    invoke-direct {v3, v5, v6, v7}, Lcom/koushikdutta/async/http/Protocol$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/koushikdutta/async/http/Protocol;->SPDY_3:Lcom/koushikdutta/async/http/Protocol;

    .line 4
    new-instance v5, Lcom/koushikdutta/async/http/Protocol$2;

    const-string v7, "HTTP_2"

    const/4 v8, 0x3

    const-string v9, "h2-13"

    invoke-direct {v5, v7, v8, v9}, Lcom/koushikdutta/async/http/Protocol$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/koushikdutta/async/http/Protocol;->HTTP_2:Lcom/koushikdutta/async/http/Protocol;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/koushikdutta/async/http/Protocol;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/koushikdutta/async/http/Protocol;->c:[Lcom/koushikdutta/async/http/Protocol;

    .line 6
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/koushikdutta/async/http/Protocol;->b:Ljava/util/Hashtable;

    .line 7
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v3}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v5}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/koushikdutta/async/http/Protocol;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/koushikdutta/async/http/Protocol$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->b:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/Protocol;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;
    .locals 1

    const-class v0, Lcom/koushikdutta/async/http/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/Protocol;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/http/Protocol;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->c:[Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/Protocol;

    return-object v0
.end method


# virtual methods
.method public needsSpdyConnection()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/Protocol;->a:Ljava/lang/String;

    return-object v0
.end method
