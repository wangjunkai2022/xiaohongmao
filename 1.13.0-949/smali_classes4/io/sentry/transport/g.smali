.class public final synthetic Lio/sentry/transport/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/h$a;


# static fields
.field public static final synthetic a:Lio/sentry/transport/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/transport/g;

    invoke-direct {v0}, Lio/sentry/transport/g;-><init>()V

    sput-object v0, Lio/sentry/transport/g;->a:Lio/sentry/transport/g;

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

    check-cast p1, Lio/sentry/hints/h;

    invoke-static {p1}, Lio/sentry/transport/d$c;->e(Lio/sentry/hints/h;)V

    return-void
.end method
