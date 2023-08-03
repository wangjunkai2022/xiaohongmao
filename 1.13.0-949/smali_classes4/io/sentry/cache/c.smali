.class public final synthetic Lio/sentry/cache/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lio/sentry/cache/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/cache/c;

    invoke-direct {v0}, Lio/sentry/cache/c;-><init>()V

    sput-object v0, Lio/sentry/cache/c;->a:Lio/sentry/cache/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lio/sentry/cache/d;->p(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
