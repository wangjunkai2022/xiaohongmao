.class public final synthetic Lcom/koushikdutta/async/parser/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/ThenCallback;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/async/parser/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/parser/a;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/a;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/parser/a;->a:Lcom/koushikdutta/async/parser/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p1}, Lcom/koushikdutta/async/parser/DocumentParser;->d(Lcom/koushikdutta/async/ByteBufferList;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method
