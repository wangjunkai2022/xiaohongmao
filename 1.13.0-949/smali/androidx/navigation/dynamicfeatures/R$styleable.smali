.class public final Landroidx/navigation/dynamicfeatures/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DynamicActivityNavigator:[I

.field public static final DynamicActivityNavigator_moduleName:I = 0x0

.field public static final DynamicGraphNavigator:[I

.field public static final DynamicGraphNavigator_moduleName:I = 0x0

.field public static final DynamicGraphNavigator_progressDestination:I = 0x1

.field public static final DynamicIncludeGraphNavigator:[I

.field public static final DynamicIncludeGraphNavigator_graphPackage:I = 0x0

.field public static final DynamicIncludeGraphNavigator_graphResName:I = 0x1

.field public static final DynamicIncludeGraphNavigator_moduleName:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04039c

    aput v2, v0, v1

    sput-object v0, Landroidx/navigation/dynamicfeatures/R$styleable;->DynamicActivityNavigator:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/navigation/dynamicfeatures/R$styleable;->DynamicGraphNavigator:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/navigation/dynamicfeatures/R$styleable;->DynamicIncludeGraphNavigator:[I

    return-void

    :array_0
    .array-data 4
        0x7f04039c
        0x7f04041e
    .end array-data

    :array_1
    .array-data 4
        0x7f04027a
        0x7f04027b
        0x7f04039c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
