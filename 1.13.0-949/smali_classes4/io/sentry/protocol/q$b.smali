.class public final Lio/sentry/protocol/q$b;
.super Ljava/lang/Object;
.source "SentrySpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "start_timestamp"

.field public static final b:Ljava/lang/String; = "timestamp"

.field public static final c:Ljava/lang/String; = "trace_id"

.field public static final d:Ljava/lang/String; = "span_id"

.field public static final e:Ljava/lang/String; = "parent_span_id"

.field public static final f:Ljava/lang/String; = "op"

.field public static final g:Ljava/lang/String; = "description"

.field public static final h:Ljava/lang/String; = "status"

.field public static final i:Ljava/lang/String; = "tags"

.field public static final j:Ljava/lang/String; = "data"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
