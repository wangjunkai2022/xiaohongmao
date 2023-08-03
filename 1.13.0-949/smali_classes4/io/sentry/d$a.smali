.class public final Lio/sentry/d$a;
.super Ljava/lang/Object;
.source "Baggage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lm8/a$c;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "sentry-trace_id"

.field public static final b:Ljava/lang/String; = "sentry-public_key"

.field public static final c:Ljava/lang/String; = "sentry-release"

.field public static final d:Ljava/lang/String; = "sentry-user_id"

.field public static final e:Ljava/lang/String; = "sentry-environment"

.field public static final f:Ljava/lang/String; = "sentry-user_segment"

.field public static final g:Ljava/lang/String; = "sentry-transaction"

.field public static final h:Ljava/lang/String; = "sentry-sample_rate"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
