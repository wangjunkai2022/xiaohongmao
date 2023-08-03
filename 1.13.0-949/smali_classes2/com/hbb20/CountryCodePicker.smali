.class public Lcom/hbb20/CountryCodePicker;
.super Landroid/widget/RelativeLayout;
.source "CountryCodePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/CountryCodePicker$e;,
        Lcom/hbb20/CountryCodePicker$f;,
        Lcom/hbb20/CountryCodePicker$i;,
        Lcom/hbb20/CountryCodePicker$g;,
        Lcom/hbb20/CountryCodePicker$h;,
        Lcom/hbb20/CountryCodePicker$TextGravity;,
        Lcom/hbb20/CountryCodePicker$AutoDetectionPref;,
        Lcom/hbb20/CountryCodePicker$PhoneNumberType;,
        Lcom/hbb20/CountryCodePicker$Language;
    }
.end annotation


# static fields
.field static final e3:I = -0x63

.field static f3:Ljava/lang/String; = "CCP"

.field static g3:Ljava/lang/String; = "selectedCode"

.field static h3:I = 0x5b

.field private static i3:I = -0x1

.field private static j3:I = 0x1

.field private static k3:I = 0x0

.field private static l3:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field E2:Z

.field F:Z

.field F2:Z

.field G:Z

.field G2:Ljava/lang/String;

.field H:Z

.field H2:Landroid/text/TextWatcher;

.field I:Z

.field I2:Lcom/hbb20/h;

.field J:Z

.field J2:Z

.field K:Z

.field K2:Landroid/text/TextWatcher;

.field L:Z

.field L2:Z

.field M:Z

.field M2:Ljava/lang/String;

.field N:Z

.field N2:I

.field O:Z

.field O2:Z

.field P:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

.field private P2:Lcom/hbb20/CountryCodePicker$h;

.field Q:Ljava/lang/String;

.field private Q2:Lcom/hbb20/CountryCodePicker$i;

.field R:I

.field private R2:Lcom/hbb20/CountryCodePicker$g;

.field S:I

.field private S2:Lcom/hbb20/CountryCodePicker$f;

.field T:I

.field T1:Ljava/lang/String;

.field private T2:Lcom/hbb20/CountryCodePicker$e;

.field U:Landroid/graphics/Typeface;

.field private U2:I

.field V:I

.field V1:Lcom/hbb20/CountryCodePicker$Language;

.field private V2:I

.field W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;"
        }
    .end annotation
.end field

.field private W2:I

.field private X2:I

.field private Y2:I

.field private Z2:I

.field private a:Lcom/hbb20/d;

.field private a3:F

.field b:Ljava/lang/String;

.field b1:I

.field b2:Lcom/hbb20/CountryCodePicker$Language;

.field private b3:Lcom/hbb20/c;

.field c:I

.field private c3:Landroid/view/View$OnClickListener;

.field d:Ljava/lang/String;

.field d3:Landroid/view/View$OnClickListener;

.field e:Landroid/content/Context;

.field f:Landroid/view/View;

.field g:Landroid/view/LayoutInflater;

.field g1:Ljava/lang/String;

.field g2:Z

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/EditText;

.field j:Landroid/widget/RelativeLayout;

.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/ImageView;

.field m:Landroid/widget/LinearLayout;

.field n:Landroid/widget/LinearLayout;

.field o:Lcom/hbb20/b;

.field p:Lcom/hbb20/b;

.field p1:I

.field p2:Z

.field q:Landroid/widget/RelativeLayout;

.field r:Lcom/hbb20/CountryCodePicker;

.field s:Lcom/hbb20/CountryCodePicker$TextGravity;

.field t:Ljava/lang/String;

.field u:I

.field v:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

.field w:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field x:Z

.field x1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;"
        }
    .end annotation
.end field

.field x2:Z

.field y:Z

.field y1:Ljava/lang/String;

.field y2:Z

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/hbb20/g;

    invoke-direct {v0}, Lcom/hbb20/g;-><init>()V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->a:Lcom/hbb20/d;

    const-string v0, "CCP_PREF_FILE"

    .line 3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b:Ljava/lang/String;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->t:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->v:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->x:Z

    .line 7
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->y:Z

    .line 8
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    .line 9
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 11
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    .line 12
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    .line 13
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    .line 14
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    .line 15
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 16
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    .line 17
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    .line 18
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 19
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    .line 20
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 21
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 22
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    .line 23
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 24
    sget-object v2, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->P:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v2, "ccp_last_selection"

    .line 25
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    const/16 v2, -0x63

    .line 26
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->R:I

    .line 27
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->S:I

    .line 28
    sget v2, Lcom/hbb20/CountryCodePicker;->k3:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->b1:I

    .line 29
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->p1:I

    .line 30
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->V1:Lcom/hbb20/CountryCodePicker$Language;

    .line 31
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    .line 32
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->g2:Z

    .line 33
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->p2:Z

    .line 34
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->x2:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->y2:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E2:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->F2:Z

    const-string v0, "notSet"

    .line 35
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->G2:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->M2:Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->N2:I

    .line 38
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->O2:Z

    .line 39
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->U2:I

    .line 40
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->Z2:I

    .line 41
    new-instance v1, Lcom/hbb20/CountryCodePicker$a;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodePicker$a;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->d3:Landroid/view/View$OnClickListener;

    .line 42
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    .line 43
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->o(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/hbb20/g;

    invoke-direct {v0}, Lcom/hbb20/g;-><init>()V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->a:Lcom/hbb20/d;

    const-string v0, "CCP_PREF_FILE"

    .line 46
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b:Ljava/lang/String;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->t:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->v:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->x:Z

    .line 50
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->y:Z

    .line 51
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    .line 52
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 54
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    .line 55
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    .line 56
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    .line 57
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    .line 58
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 59
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    .line 60
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    .line 61
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 62
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    .line 63
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 64
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 65
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    .line 66
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 67
    sget-object v2, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->P:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v2, "ccp_last_selection"

    .line 68
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    const/16 v2, -0x63

    .line 69
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->R:I

    .line 70
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->S:I

    .line 71
    sget v2, Lcom/hbb20/CountryCodePicker;->k3:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->b1:I

    .line 72
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->p1:I

    .line 73
    sget-object v2, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->V1:Lcom/hbb20/CountryCodePicker$Language;

    .line 74
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    .line 75
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->g2:Z

    .line 76
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->p2:Z

    .line 77
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->x2:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->y2:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E2:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->F2:Z

    const-string v0, "notSet"

    .line 78
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->G2:Ljava/lang/String;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->M2:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->N2:I

    .line 81
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->O2:Z

    .line 82
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->U2:I

    .line 83
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->Z2:I

    .line 84
    new-instance v0, Lcom/hbb20/CountryCodePicker$a;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$a;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->d3:Landroid/view/View$OnClickListener;

    .line 85
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    .line 86
    invoke-direct {p0, p2}, Lcom/hbb20/CountryCodePicker;->o(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    new-instance p3, Lcom/hbb20/g;

    invoke-direct {p3}, Lcom/hbb20/g;-><init>()V

    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->a:Lcom/hbb20/d;

    const-string p3, "CCP_PREF_FILE"

    .line 89
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->b:Ljava/lang/String;

    const-string p3, ""

    .line 90
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->t:Ljava/lang/String;

    .line 91
    sget-object p3, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->v:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    const/4 p3, 0x1

    .line 92
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->x:Z

    .line 93
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->y:Z

    .line 94
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    .line 95
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 97
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    .line 98
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    .line 99
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    .line 100
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    .line 101
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 102
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    .line 103
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    .line 104
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 105
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    .line 106
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 107
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 108
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    .line 109
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 110
    sget-object v1, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->MOBILE:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->P:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    const-string v1, "ccp_last_selection"

    .line 111
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    const/16 v1, -0x63

    .line 112
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->R:I

    .line 113
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->S:I

    .line 114
    sget v1, Lcom/hbb20/CountryCodePicker;->k3:I

    iput v1, p0, Lcom/hbb20/CountryCodePicker;->b1:I

    .line 115
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->p1:I

    .line 116
    sget-object v1, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->V1:Lcom/hbb20/CountryCodePicker$Language;

    .line 117
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    .line 118
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->g2:Z

    .line 119
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->p2:Z

    .line 120
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->x2:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->y2:Z

    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->E2:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F2:Z

    const-string p3, "notSet"

    .line 121
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->G2:Ljava/lang/String;

    const/4 p3, 0x0

    .line 122
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->M2:Ljava/lang/String;

    .line 123
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->N2:I

    .line 124
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->O2:Z

    .line 125
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->U2:I

    .line 126
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->Z2:I

    .line 127
    new-instance p3, Lcom/hbb20/CountryCodePicker$a;

    invoke-direct {p3, p0}, Lcom/hbb20/CountryCodePicker$a;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->d3:Landroid/view/View$OnClickListener;

    .line 128
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    .line 129
    invoke-direct {p0, p2}, Lcom/hbb20/CountryCodePicker;->o(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setCountryForNameCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private L()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private X()V
    .locals 1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeAsInt()I

    move-result v0

    invoke-static {v0}, Lcom/hbb20/c;->e(I)Lcom/hbb20/c;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b3:Lcom/hbb20/c;

    return-void
.end method

.method private Y()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->M0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->I2:Lcom/hbb20/h;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->K2:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    .line 7
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    :cond_1
    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->E2:Z

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Lcom/hbb20/h;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeAsInt()I

    move-result v4

    iget-boolean v5, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/h;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->I2:Lcom/hbb20/h;

    .line 10
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 11
    :cond_2
    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    if-eqz v1, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getCountryDetectorTextWatcher()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->K2:Landroid/text/TextWatcher;

    .line 13
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    .line 17
    sget-object v0, Lcom/hbb20/CountryCodePicker;->f3:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFormattingTextWatcher: EditText not registered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_5
    sget-object v0, Lcom/hbb20/CountryCodePicker;->f3:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFormattingTextWatcher: selected country is null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private Z()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F2:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedHintNumberType()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->L(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCodeWithPlus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->t:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/hbb20/CountryCodePicker;->c3:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->V1:Lcom/hbb20/CountryCodePicker$Language;

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getCCPLanguageFromLocale()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 10
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->V1:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    goto :goto_0

    .line 13
    :cond_5
    sget-object v0, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/b;
    .locals 0

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/b;

    move-result-object p0

    return-object p0
.end method

.method private b0()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->H2:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->D()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->J2:Z

    .line 4
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->Q2:Lcom/hbb20/CountryCodePicker$i;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lcom/hbb20/CountryCodePicker$i;->a(Z)V

    .line 6
    :cond_0
    new-instance v0, Lcom/hbb20/CountryCodePicker$c;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$c;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->H2:Landroid/text/TextWatcher;

    .line 7
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic c(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/c;
    .locals 0

    iget-object p0, p0, Lcom/hbb20/CountryCodePicker;->b3:Lcom/hbb20/c;

    return-object p0
.end method

.method static synthetic d(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$i;
    .locals 0

    iget-object p0, p0, Lcom/hbb20/CountryCodePicker;->Q2:Lcom/hbb20/CountryCodePicker$i;

    return-object p0
.end method

.method private e(Landroid/util/AttributeSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/hbb20/i$o;->i4:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    sget v1, Lcom/hbb20/i$o;->Z4:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->x:Z

    .line 3
    sget v1, Lcom/hbb20/i$o;->F4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->E2:Z

    .line 4
    sget v1, Lcom/hbb20/i$o;->a5:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->y:Z

    .line 5
    sget v4, Lcom/hbb20/i$o;->x4:I

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    .line 6
    sget v1, Lcom/hbb20/i$o;->w4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    .line 7
    sget v1, Lcom/hbb20/i$o;->y4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    .line 8
    sget v1, Lcom/hbb20/i$o;->e5:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 9
    sget v1, Lcom/hbb20/i$o;->d5:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    .line 10
    sget v1, Lcom/hbb20/i$o;->v4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    .line 11
    sget v1, Lcom/hbb20/i$o;->q4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 12
    sget v1, Lcom/hbb20/i$o;->Y4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 13
    sget v1, Lcom/hbb20/i$o;->u4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    .line 14
    sget v1, Lcom/hbb20/i$o;->n4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/hbb20/CountryCodePicker;->p1:I

    .line 15
    sget v1, Lcom/hbb20/i$o;->p4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/hbb20/CountryCodePicker;->U2:I

    .line 16
    sget v1, Lcom/hbb20/i$o;->o4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/hbb20/CountryCodePicker;->Z2:I

    .line 17
    sget v1, Lcom/hbb20/i$o;->E4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->x2:Z

    .line 18
    sget v1, Lcom/hbb20/i$o;->A4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 19
    sget v1, Lcom/hbb20/i$o;->U4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    .line 20
    sget v1, Lcom/hbb20/i$o;->Q4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->F2:Z

    .line 21
    sget v1, Lcom/hbb20/i$o;->S4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 22
    sget v1, Lcom/hbb20/i$o;->T4:I

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/hbb20/i$f;->G0:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/hbb20/CountryCodePicker;->u:I

    .line 23
    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 24
    sget v1, Lcom/hbb20/i$o;->R4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 25
    invoke-static {}, Lcom/hbb20/CountryCodePicker$PhoneNumberType;->values()[Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    move-result-object v4

    aget-object v1, v4, v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->P:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 26
    sget v1, Lcom/hbb20/i$o;->V4:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "CCP_last_selection"

    .line 27
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    .line 28
    :cond_0
    sget v1, Lcom/hbb20/i$o;->I4:I

    const/16 v4, 0x7b

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->getPrefForValue(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->v:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    .line 30
    sget v1, Lcom/hbb20/i$o;->D4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->y2:Z

    .line 31
    sget v1, Lcom/hbb20/i$o;->W4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 32
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->J()V

    .line 33
    sget v1, Lcom/hbb20/i$o;->t4:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    .line 34
    sget v1, Lcom/hbb20/i$o;->X4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->T(Z)V

    .line 35
    sget v1, Lcom/hbb20/i$o;->r4:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setDialogKeyboardAutoPopup(Z)V

    .line 36
    sget v1, Lcom/hbb20/i$o;->L4:I

    sget-object v4, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 37
    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->n(I)Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->V1:Lcom/hbb20/CountryCodePicker$Language;

    .line 38
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->a0()V

    .line 39
    sget v1, Lcom/hbb20/i$o;->K4:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->y1:Ljava/lang/String;

    .line 40
    sget v1, Lcom/hbb20/i$o;->O4:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->T1:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->K()V

    .line 43
    :cond_1
    sget v1, Lcom/hbb20/i$o;->J4:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->g1:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->M()V

    .line 46
    :cond_2
    sget v1, Lcom/hbb20/i$o;->b5:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    sget v4, Lcom/hbb20/CountryCodePicker;->k3:I

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/hbb20/CountryCodePicker;->b1:I

    .line 48
    :cond_3
    iget v1, p0, Lcom/hbb20/CountryCodePicker;->b1:I

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->f(I)V

    .line 49
    sget v1, Lcom/hbb20/i$o;->M4:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "IN"

    if-eqz v1, :cond_6

    .line 50
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 52
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v5

    iget-object v6, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 53
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v5

    iget-object v6, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/b;)V

    .line 54
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    goto :goto_0

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/hbb20/b;->g(Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 56
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/hbb20/b;->g(Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/b;)V

    .line 57
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_7

    .line 58
    invoke-static {v4}, Lcom/hbb20/b;->g(Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/b;)V

    .line 59
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    .line 60
    :cond_7
    :goto_2
    sget v5, Lcom/hbb20/i$o;->N4:I

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    if-nez v1, :cond_b

    if-eq v5, v6, :cond_b

    .line 61
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_9

    if-eq v5, v6, :cond_8

    .line 62
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v6, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    invoke-static {v0, v1, v6, v5}, Lcom/hbb20/b;->c(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/b;

    move-result-object v0

    if-nez v0, :cond_8

    .line 63
    sget v5, Lcom/hbb20/CountryCodePicker;->h3:I

    .line 64
    :cond_8
    invoke-virtual {p0, v5}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingPhoneCode(I)V

    .line 65
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    goto :goto_3

    .line 66
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hbb20/b;->e(Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    if-nez v1, :cond_a

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/hbb20/CountryCodePicker;->h3:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hbb20/b;->e(Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    .line 68
    :cond_a
    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/b;)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    .line 70
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/b;

    move-result-object v0

    if-nez v0, :cond_c

    .line 71
    invoke-static {v4}, Lcom/hbb20/b;->g(Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/b;)V

    .line 72
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/b;

    move-result-object v0

    if-nez v0, :cond_c

    .line 73
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    .line 74
    :cond_c
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->q()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 75
    invoke-virtual {p0, v2}, Lcom/hbb20/CountryCodePicker;->setAutoDetectedCountry(Z)V

    .line 76
    :cond_d
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 77
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->G()V

    .line 78
    :cond_e
    sget v0, Lcom/hbb20/i$o;->B4:I

    const/16 v1, -0x63

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowColor(I)V

    .line 80
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 81
    sget v0, Lcom/hbb20/i$o;->H4:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_4

    .line 82
    :cond_f
    sget v0, Lcom/hbb20/i$o;->H4:I

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/hbb20/i$e;->U:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_4
    if-eq v0, v1, :cond_10

    .line 83
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setContentColor(I)V

    .line 84
    :cond_10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 85
    sget v0, Lcom/hbb20/i$o;->P4:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_5

    .line 86
    :cond_11
    sget v0, Lcom/hbb20/i$o;->P4:I

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/hbb20/i$e;->T:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_5
    if-eqz v0, :cond_12

    .line 87
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setFlagBorderColor(I)V

    .line 88
    :cond_12
    sget v0, Lcom/hbb20/i$o;->l4:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogBackgroundColor(I)V

    .line 89
    sget v0, Lcom/hbb20/i$o;->k4:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogBackground(I)V

    .line 90
    sget v0, Lcom/hbb20/i$o;->z4:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogTextColor(I)V

    .line 91
    sget v0, Lcom/hbb20/i$o;->s4:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogSearchEditTextTintColor(I)V

    .line 92
    sget v0, Lcom/hbb20/i$o;->m4:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogCornerRaius(F)V

    .line 93
    sget v0, Lcom/hbb20/i$o;->c5:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_13

    .line 94
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    int-to-float v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 97
    :cond_13
    sget v0, Lcom/hbb20/i$o;->C4:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_14

    .line 98
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 99
    :cond_14
    sget v0, Lcom/hbb20/i$o;->j4:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    .line 100
    sget v0, Lcom/hbb20/i$o;->G4:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setCcpClickable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    throw v0
.end method

.method private f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumIndex"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hbb20/CountryCodePicker$TextGravity;->LEFT:Lcom/hbb20/CountryCodePicker$TextGravity;

    iget v0, v0, Lcom/hbb20/CountryCodePicker$TextGravity;->a:I

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$TextGravity;->CENTER:Lcom/hbb20/CountryCodePicker$TextGravity;

    iget v0, v0, Lcom/hbb20/CountryCodePicker$TextGravity;->a:I

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private getCCPLanguageFromLocale()Lcom/hbb20/CountryCodePicker$Language;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 2
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 3
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCountry()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getScript()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$Language;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCountryCodeHolderClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->d3:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getCountryDetectorTextWatcher()Landroid/text/TextWatcher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->K2:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/hbb20/CountryCodePicker$b;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$b;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->K2:Landroid/text/TextWatcher;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->K2:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private getDefaultCountry()Lcom/hbb20/b;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    return-object v0
.end method

.method private getEnteredPhoneNumber()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/michaelrocks/libphonenumber/android/NumberParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->M0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->O0(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method private getHolderView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    return-object v0
.end method

.method private getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->w:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->h(Landroid/content/Context;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->w:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->w:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    return-object v0
.end method

.method private getSelectedCountry()Lcom/hbb20/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    return-object v0
.end method

.method private getSelectedHintNumberType()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;
    .locals 2

    .line 1
    sget-object v0, Lcom/hbb20/CountryCodePicker$d;->a:[I

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->P:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 3
    :pswitch_0
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 4
    :pswitch_1
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 5
    :pswitch_2
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->UAN:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 6
    :pswitch_3
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PAGER:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 7
    :pswitch_4
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 8
    :pswitch_5
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->VOIP:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 9
    :pswitch_6
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 10
    :pswitch_7
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 11
    :pswitch_8
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 12
    :pswitch_9
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 13
    :pswitch_a
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 14
    :pswitch_b
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getmInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private i(Ljava/lang/String;Lcom/hbb20/b;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fullNumber",
            "CCPCountry"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/hbb20/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/hbb20/b;->x()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private n(I)Lcom/hbb20/CountryCodePicker$Language;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/hbb20/CountryCodePicker$Language;->values()[Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/hbb20/CountryCodePicker$Language;->ENGLISH:Lcom/hbb20/CountryCodePicker$Language;

    return-object p1
.end method

.method private o(Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/hbb20/CountryCodePicker;->l3:Ljava/lang/String;

    const-string v1, "layout_width"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->G2:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->G2:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->G2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->G2:Ljava/lang/String;

    const-string v2, "fill_parent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->G2:Ljava/lang/String;

    const-string v2, "match_parent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/view/LayoutInflater;

    sget v2, Lcom/hbb20/i$k;->F:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/view/LayoutInflater;

    sget v2, Lcom/hbb20/i$k;->E:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    sget v1, Lcom/hbb20/i$h;->s3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    sget v1, Lcom/hbb20/i$h;->A1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/RelativeLayout;

    .line 9
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    sget v1, Lcom/hbb20/i$h;->S1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/ImageView;

    .line 10
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    sget v1, Lcom/hbb20/i$h;->T1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->l:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    sget v1, Lcom/hbb20/i$h;->c2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/LinearLayout;

    .line 12
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    sget v1, Lcom/hbb20/i$h;->b2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/LinearLayout;

    .line 13
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    sget v1, Lcom/hbb20/i$h;->w2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    .line 14
    iput-object p0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/CountryCodePicker;

    if-eqz p1, :cond_3

    .line 15
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->e(Landroid/util/AttributeSet;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->d3:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private p(Lcom/hbb20/b;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "CCPCountry",
            "CCPCountryList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hbb20/b;",
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/b;

    .line 2
    invoke-virtual {v0}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private setCustomDefaultLanguage(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customDefaultLanguage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->V1:Lcom/hbb20/CountryCodePicker$Language;

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->a0()V

    .line 3
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {v1}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    :cond_0
    return-void
.end method

.method private setDefaultCountry(Lcom/hbb20/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultCCPCountry"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    return-void
.end method

.method private setHolder(Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private setHolderView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holderView"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->f:Landroid/view/View;

    return-void
.end method

.method private w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    return v0
.end method

.method private x(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameCode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/hbb20/b;->l(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/b;

    .line 3
    iget-object v1, v1, Lcom/hbb20/b;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E2:Z

    return v0
.end method


# virtual methods
.method protected A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    return v0
.end method

.method B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    return v0
.end method

.method C()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->y:Z

    return v0
.end method

.method public D()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {v3}, Lcom/hbb20/b;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {v3}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->O0(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 3
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->A0(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Z

    move-result v0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    const-string v2, "No editText for Carrier number found."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v0
.end method

.method public E()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->F(Ljava/lang/String;)V

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "countryNameCode"
        }
    .end annotation

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0, p1}, Lcom/hbb20/f;->f(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V

    return-void
.end method

.method protected H(Lcom/hbb20/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "CCPCountry"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/CountryCodePicker;

    iget-boolean v1, v0, Lcom/hbb20/CountryCodePicker;->I:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hbb20/CountryCodePicker;->W(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    return-void
.end method

.method public I(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->c3:Landroid/view/View$OnClickListener;

    return-void
.end method

.method K()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->y1:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->y1:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    invoke-direct {p0, v5, v0}, Lcom/hbb20/CountryCodePicker;->p(Lcom/hbb20/b;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 8
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    goto :goto_3

    .line 9
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    goto :goto_3

    .line 10
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->T1:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 11
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->T1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->T1:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hbb20/b;->s(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/util/List;

    move-result-object v0

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hbb20/b;

    .line 15
    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->T1:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 16
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 18
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    goto :goto_3

    .line 19
    :cond_7
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    goto :goto_3

    .line 20
    :cond_8
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    .line 21
    :goto_3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/b;

    .line 23
    invoke-virtual {v1}, Lcom/hbb20/b;->B()V

    goto :goto_4

    :cond_9
    return-void
.end method

.method M()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->g1:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->g1:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v8

    invoke-static {v6, v7, v8, v5}, Lcom/hbb20/b;->f(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    invoke-direct {p0, v5, v0}, Lcom/hbb20/CountryCodePicker;->p(Lcom/hbb20/b;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 8
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    goto :goto_2

    .line 9
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    .line 11
    :goto_2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/b;

    .line 13
    invoke-virtual {v1}, Lcom/hbb20/b;->B()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public N(Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editTextCarrierNumber"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setEditText_registeredCarrierNumber(Landroid/widget/EditText;)V

    return-void
.end method

.method public O()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryNameCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    .line 2
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    return-void
.end method

.method public P(Landroid/graphics/Typeface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeFace",
            "style"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->U:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public Q(Landroid/graphics/Typeface;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeFace",
            "style"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodePicker;->P(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public R(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showArrow"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->J()V

    return-void
.end method

.method public S(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showCloseIcon"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    return-void
.end method

.method public T(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showFlag"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->L()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    :cond_0
    return-void
.end method

.method public U(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showFullName"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    return-void
.end method

.method public V(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showNameCode"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->x:Z

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    return-void
.end method

.method W(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedCountryNameCode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->Q:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useFlagEmoji"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->L()V

    .line 3
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    return-void
.end method

.method public g(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "language"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->setCustomDefaultLanguage(Lcom/hbb20/CountryCodePicker$Language;)V

    return-void
.end method

.method public getCcpDialogShowFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    return v0
.end method

.method public getCcpDialogShowNameCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    return v0
.end method

.method public getCcpDialogShowTitle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    return v0
.end method

.method public getContentColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->R:I

    return v0
.end method

.method getCurrentTextGravity()Lcom/hbb20/CountryCodePicker$TextGravity;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->s:Lcom/hbb20/CountryCodePicker$TextGravity;

    return-object v0
.end method

.method getCustomDefaultLanguage()Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->V1:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method getCustomMasterCountriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    return-object v0
.end method

.method getCustomMasterCountriesParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->y1:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    iget-object v0, v0, Lcom/hbb20/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryCodeAsInt()I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDefaultCountryCodeWithPlus()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCountryName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/hbb20/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCountryNameCode()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/hbb20/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDialogBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->W2:I

    return v0
.end method

.method getDialogBackgroundResId()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->V2:I

    return v0
.end method

.method public getDialogCornerRadius()F
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->a3:F

    return v0
.end method

.method protected getDialogEventsListener()Lcom/hbb20/CountryCodePicker$f;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->S2:Lcom/hbb20/CountryCodePicker$f;

    return-object v0
.end method

.method getDialogSearchEditTextTintColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->Y2:I

    return v0
.end method

.method getDialogTextColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->X2:I

    return v0
.end method

.method getDialogTitle()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/b;->m(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->T2:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/hbb20/CountryCodePicker$e;->c(Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getDialogTypeFace()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->U:Landroid/graphics/Typeface;

    return-object v0
.end method

.method getDialogTypeFaceStyle()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->V:I

    return v0
.end method

.method getEditText_registeredCarrierNumber()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method getFastScrollerBubbleColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->p1:I

    return v0
.end method

.method getFastScrollerBubbleTextAppearance()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->Z2:I

    return v0
.end method

.method getFastScrollerHandleColor()I
    .locals 1

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->U2:I

    return v0
.end method

.method public getFormattedFullNumber()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getEnteredPhoneNumber()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v2

    sget-object v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v0, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->q(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    sget-object v0, Lcom/hbb20/CountryCodePicker;->f3:Ljava/lang/String;

    const-string v1, "getFullNumber: Could not parse number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumberWithPlus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullNumber()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getEnteredPhoneNumber()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getPhoneUtil()Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    move-result-object v1

    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->E164:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v1, v0, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->q(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    sget-object v0, Lcom/hbb20/CountryCodePicker;->f3:Ljava/lang/String;

    const-string v1, "getFullNumber: Could not parse number"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->M0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullNumberWithPlus()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getFullNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHolder()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getImageViewFlag()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->a0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    return-object v0
.end method

.method getNoResultACK()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/b;->w(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->T2:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/hbb20/CountryCodePicker$e;->a(Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getSearchHintText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hbb20/b;->y(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->T2:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/hbb20/CountryCodePicker$e;->b(Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSelectedCountryCode()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/b;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryCodeAsInt()I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSelectedCountryCodeWithPlus()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCountryEnglishName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hbb20/b;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCountryFlagResourceId()I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/b;

    move-result-object v0

    iget v0, v0, Lcom/hbb20/b;->e:I

    return v0
.end method

.method public getSelectedCountryName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/b;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedCountryNameCode()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getSelectedCountry()Lcom/hbb20/b;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextView_selectedCountry()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->H2:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->I2:Lcom/hbb20/h;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4
    :catch_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    :cond_0
    return-void
.end method

.method public j(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadDefaultWhenFails"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->x(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->O()V

    :cond_3
    return v0
.end method

.method public k(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadDefaultWhenFails"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->x(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->O()V

    :cond_3
    return v0
.end method

.method public l(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadDefaultWhenFails"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->e:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->x(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->O()V

    :cond_3
    return v0
.end method

.method public m(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "initialScrollToSelection"
        }
    .end annotation

    iget-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/hbb20/f;->b()V

    .line 2
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->y2:Z

    return v0
.end method

.method r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->x2:Z

    return v0
.end method

.method s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->p2:Z

    return v0
.end method

.method public setArrowColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrowColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->S:I

    const/16 v0, -0x63

    if-ne p1, v0, :cond_0

    .line 2
    iget p1, p0, Lcom/hbb20/CountryCodePicker;->R:I

    if-eq p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setArrowSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arrowSize"
        }
    .end annotation

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setAutoDetectedCountry(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadDefaultWhenFails"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->v:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iget-object v3, v3, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->v:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    iget-object v3, v3, Lcom/hbb20/CountryCodePicker$AutoDetectionPref;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->j(Z)Z

    move-result v2

    goto :goto_1

    .line 4
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->k(Z)Z

    move-result v2

    goto :goto_1

    .line 5
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->l(Z)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->R2:Lcom/hbb20/CountryCodePicker$g;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Lcom/hbb20/CountryCodePicker$g;->a()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    sget-object v1, Lcom/hbb20/CountryCodePicker;->f3:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoDetectCountry: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->O()V

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoDetectionFailureListener(Lcom/hbb20/CountryCodePicker$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failureListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->R2:Lcom/hbb20/CountryCodePicker$g;

    return-void
.end method

.method public setCcpClickable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ccpClickable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->p2:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 4
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->d3:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 7
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setCcpDialogShowFlag(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ccpDialogShowFlag"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    return-void
.end method

.method public setCcpDialogShowNameCode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ccpDialogShowNameCode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    return-void
.end method

.method public setCcpDialogShowPhoneCode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ccpDialogShowPhoneCode"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    return-void
.end method

.method public setCcpDialogShowTitle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ccpDialogShowTitle"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    return-void
.end method

.method public setContentColor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->R:I

    .line 2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget p1, p0, Lcom/hbb20/CountryCodePicker;->S:I

    const/16 v0, -0x63

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/ImageView;

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->R:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCountryAutoDetectionPref(Lcom/hbb20/CountryCodePicker$AutoDetectionPref;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedAutoDetectionPref"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->v:Lcom/hbb20/CountryCodePicker$AutoDetectionPref;

    return-void
.end method

.method public setCountryForNameCode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryNameCode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    iget v2, p0, Lcom/hbb20/CountryCodePicker;->c:I

    invoke-static {p1, v0, v1, v2}, Lcom/hbb20/b;->c(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/b;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    :goto_0
    return-void
.end method

.method public setCountryForPhoneCode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryCode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/b;->c(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/b;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    iget v2, p0, Lcom/hbb20/CountryCodePicker;->c:I

    invoke-static {p1, v0, v1, v2}, Lcom/hbb20/b;->c(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/b;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->p:Lcom/hbb20/b;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    :goto_0
    return-void
.end method

.method public setCountryPreference(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countryPreference"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->g1:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTextGravity(Lcom/hbb20/CountryCodePicker$TextGravity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textGravity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Lcom/hbb20/CountryCodePicker$TextGravity;

    .line 2
    iget p1, p1, Lcom/hbb20/CountryCodePicker$TextGravity;->a:I

    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->f(I)V

    return-void
.end method

.method public setCustomDialogTextProvider(Lcom/hbb20/CountryCodePicker$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customDialogTextProvider"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->T2:Lcom/hbb20/CountryCodePicker$e;

    return-void
.end method

.method public setCustomMasterCountries(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customMasterCountriesParam"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->y1:Ljava/lang/String;

    return-void
.end method

.method setCustomMasterCountriesList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customMasterCountriesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hbb20/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->x1:Ljava/util/List;

    return-void
.end method

.method public setDefaultCountryUsingNameCode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultCountryNameCode"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hbb20/b;->h(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/b;)V

    :goto_0
    return-void
.end method

.method public setDefaultCountryUsingPhoneCode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultCountryCode"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/b;->c(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->c:I

    .line 3
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDefaultCountry(Lcom/hbb20/b;)V

    :goto_0
    return-void
.end method

.method public setDetectCountryWithAreaCode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detectCountryWithAreaCode"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Y()V

    return-void
.end method

.method public setDialogBackground(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogBackgroundResId"
        }
    .end annotation

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->V2:I

    return-void
.end method

.method public setDialogBackgroundColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogBackgroundColor"
        }
    .end annotation

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->W2:I

    return-void
.end method

.method public setDialogCornerRaius(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogCornerRadius"
        }
    .end annotation

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->a3:F

    return-void
.end method

.method public setDialogEventsListener(Lcom/hbb20/CountryCodePicker$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogEventsListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->S2:Lcom/hbb20/CountryCodePicker$f;

    return-void
.end method

.method public setDialogKeyboardAutoPopup(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogKeyboardAutoPopup"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->g2:Z

    return-void
.end method

.method public setDialogSearchEditTextTintColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogSearchEditTextTintColor"
        }
    .end annotation

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->Y2:I

    return-void
.end method

.method public setDialogTextColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogTextColor"
        }
    .end annotation

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->X2:I

    return-void
.end method

.method public setDialogTypeFace(Landroid/graphics/Typeface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeFace"
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->U:Landroid/graphics/Typeface;

    const/16 p1, -0x63

    .line 2
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->V:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setEditText_registeredCarrierNumber(Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editText_registeredCarrierNumber"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->t:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->b0()V

    .line 5
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Y()V

    .line 6
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Z()V

    return-void
.end method

.method public setExcludedCountries(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "excludedCountries"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->T1:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->K()V

    return-void
.end method

.method public setFastScrollerBubbleColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fastScrollerBubbleColor"
        }
    .end annotation

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->p1:I

    return-void
.end method

.method public setFastScrollerBubbleTextAppearance(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fastScrollerBubbleTextAppearance"
        }
    .end annotation

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->Z2:I

    return-void
.end method

.method public setFastScrollerHandleColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fastScrollerHandleColor"
        }
    .end annotation

    iput p1, p0, Lcom/hbb20/CountryCodePicker;->U2:I

    return-void
.end method

.method public setFlagBorderColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "borderFlagColor"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->T:I

    .line 2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setFlagSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flagSize"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setFullNumber(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullNumber"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/b;->k(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->getDefaultCountry()Lcom/hbb20/b;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/hbb20/CountryCodePicker;->i(Ljava/lang/String;Lcom/hbb20/b;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getEditText_registeredCarrierNumber()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Y()V

    goto :goto_0

    .line 8
    :cond_1
    sget-object p1, Lcom/hbb20/CountryCodePicker;->f3:Ljava/lang/String;

    const-string v0, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber()."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHintExampleNumberEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hintExampleNumberEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->F2:Z

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Z()V

    return-void
.end method

.method public setHintExampleNumberType(Lcom/hbb20/CountryCodePicker$PhoneNumberType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hintExampleNumberType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->P:Lcom/hbb20/CountryCodePicker$PhoneNumberType;

    .line 2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Z()V

    return-void
.end method

.method public setImageViewFlag(Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageViewFlag"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->l:Landroid/widget/ImageView;

    return-void
.end method

.method public setInternationalFormattingOnly(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "internationalFormattingOnly"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Y()V

    :cond_0
    return-void
.end method

.method setLanguageToApply(Lcom/hbb20/CountryCodePicker$Language;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "languageToApply"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->b2:Lcom/hbb20/CountryCodePicker$Language;

    return-void
.end method

.method public setNumberAutoFormattingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numberAutoFormattingEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->E2:Z

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Y()V

    :cond_0
    return-void
.end method

.method public setOnCountryChangeListener(Lcom/hbb20/CountryCodePicker$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onCountryChangeListener"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->P2:Lcom/hbb20/CountryCodePicker$h;

    return-void
.end method

.method public setPhoneNumberValidityChangeListener(Lcom/hbb20/CountryCodePicker$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "phoneNumberValidityChangeListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->Q2:Lcom/hbb20/CountryCodePicker$i;

    .line 2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->D()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->J2:Z

    .line 4
    invoke-interface {p1, v0}, Lcom/hbb20/CountryCodePicker$i;->a(Z)V

    :cond_0
    return-void
.end method

.method public setSearchAllowed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "searchAllowed"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    return-void
.end method

.method setSelectedCountry(Lcom/hbb20/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedCCPCountry"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->a:Lcom/hbb20/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/hbb20/d;->a(Lcom/hbb20/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->a:Lcom/hbb20/d;

    invoke-interface {v1, p1}, Lcom/hbb20/d;->a(Lcom/hbb20/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->L2:Z

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->M2:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getLanguageToApply()Lcom/hbb20/CountryCodePicker$Language;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    iget v4, p0, Lcom/hbb20/CountryCodePicker;->c:I

    invoke-static {p1, v2, v3, v4}, Lcom/hbb20/b;->c(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$Language;Ljava/util/List;I)Lcom/hbb20/b;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    .line 7
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    const-string v3, "  "

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    if-eqz v2, :cond_2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ud83c\udfc1\u200b "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hbb20/b;->o(Lcom/hbb20/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u200b "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hbb20/b;->o(Lcom/hbb20/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    if-eqz v2, :cond_5

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_5
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->x:Z

    if-eqz v2, :cond_7

    .line 16
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    if-eqz v2, :cond_6

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 18
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_7
    :goto_1
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->y:Z

    const-string v4, "+"

    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_9
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hbb20/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_a
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->l:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hbb20/b;->p()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->P2:Lcom/hbb20/CountryCodePicker$h;

    if-eqz p1, :cond_b

    .line 29
    invoke-interface {p1}, Lcom/hbb20/CountryCodePicker$h;->a()V

    .line 30
    :cond_b
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Y()V

    .line 31
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->Z()V

    .line 32
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->Q2:Lcom/hbb20/CountryCodePicker$i;

    if-eqz p1, :cond_c

    .line 33
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->D()Z

    move-result p1

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->J2:Z

    .line 34
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->Q2:Lcom/hbb20/CountryCodePicker$i;

    invoke-interface {v1, p1}, Lcom/hbb20/CountryCodePicker$i;->a(Z)V

    :cond_c
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->L2:Z

    .line 36
    iget-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->O2:Z

    if-eqz p1, :cond_d

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/widget/EditText;

    iget v1, p0, Lcom/hbb20/CountryCodePicker;->N2:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 38
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->O2:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->X()V

    return-void
.end method

.method public setShowFastScroller(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showFastScroller"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    return-void
.end method

.method public setShowPhoneCode(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showPhoneCode"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->y:Z

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    return-void
.end method

.method public setTalkBackTextProvider(Lcom/hbb20/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "talkBackTextProvider"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->a:Lcom/hbb20/d;

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->o:Lcom/hbb20/b;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setSelectedCountry(Lcom/hbb20/b;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textSize"
        }
    .end annotation

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    :cond_0
    return-void
.end method

.method public setTextView_selectedCountry(Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textView_selectedCountry"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeFace"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setDialogTypeFace(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    return v0
.end method

.method v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->g2:Z

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    return v0
.end method
