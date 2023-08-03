.class public final synthetic Lio/sentry/a3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/c3$a;


# static fields
.field public static final synthetic a:Lio/sentry/a3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/a3;

    invoke-direct {v0}, Lio/sentry/a3;-><init>()V

    sput-object v0, Lio/sentry/a3;->a:Lio/sentry/a3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-static {p1}, Lio/sentry/c3;->c(Lio/sentry/SentryOptions;)V

    return-void
.end method
