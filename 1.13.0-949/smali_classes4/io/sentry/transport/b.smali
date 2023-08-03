.class public final synthetic Lio/sentry/transport/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/h$a;


# static fields
.field public static final synthetic a:Lio/sentry/transport/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/transport/b;

    invoke-direct {v0}, Lio/sentry/transport/b;-><init>()V

    sput-object v0, Lio/sentry/transport/b;->a:Lio/sentry/transport/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/sentry/hints/m;

    invoke-static {p1}, Lio/sentry/transport/d;->b(Lio/sentry/hints/m;)V

    return-void
.end method
