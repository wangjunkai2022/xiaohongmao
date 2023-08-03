.class public final synthetic Lcom/koushikdutta/async/future/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/koushikdutta/async/future/TypeConverter;


# static fields
.field public static final synthetic a:Lcom/koushikdutta/async/future/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/e;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/future/e;->a:Lcom/koushikdutta/async/future/e;

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

    check-cast p1, [B

    invoke-static {p1, p2}, Lcom/koushikdutta/async/future/Converter;->l([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method
