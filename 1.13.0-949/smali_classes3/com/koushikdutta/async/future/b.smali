.class public final synthetic Lcom/koushikdutta/async/future/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/TypeConverter;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/async/future/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/b;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/b;->a:Lcom/koushikdutta/async/future/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/future/Converter;->h(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
