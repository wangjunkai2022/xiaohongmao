.class public final Lio/sentry/f0;
.super Ljava/lang/Object;
.source "HttpStatusCodeRange.java"


# static fields
.field public static final c:I = 0x1f4

.field public static final d:I = 0x257


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lio/sentry/f0;->a:I

    .line 6
    iput p1, p0, Lio/sentry/f0;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/sentry/f0;->a:I

    .line 3
    iput p2, p0, Lio/sentry/f0;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget v0, p0, Lio/sentry/f0;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lio/sentry/f0;->b:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
