.class public final synthetic Lio/sentry/r4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/util/a$b;


# static fields
.field public static final synthetic a:Lio/sentry/r4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/r4;

    invoke-direct {v0}, Lio/sentry/r4;-><init>()V

    sput-object v0, Lio/sentry/r4;->a:Lio/sentry/r4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lio/sentry/protocol/r;

    invoke-static {p1}, Lio/sentry/t4;->a(Lio/sentry/protocol/r;)Z

    move-result p1

    return p1
.end method
