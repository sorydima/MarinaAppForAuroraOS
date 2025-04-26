Name:       com.domestic.marina
Summary:    Marina
Version:    1.0.1
Release:    11
Group:      Qt/Qt
License:    BSD-3-Clause
URL:        https://marina.rechain.network
Source0:    %{name}-%{version}.tar.bz2
Requires:   sailfishsilica-qt5 >= 0.10.9
BuildRequires:  pkgconfig(aurorawebview)
BuildRequires:  pkgconfig(auroraapp)
BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Quick)
BuildRequires:  pkgconfig(Qt5Network)

%description
Join the Domestic Marina! Marina.Moda

%prep
%autosetup

%build
%qmake5
%make_build

%install
%make_install

%files
%defattr(-,root,root,-)
%{_bindir}/%{name}
%defattr(644,root,root,-)
%{_datadir}/%{name}
%{_datadir}/applications/%{name}.desktop
%{_datadir}/icons/hicolor/*/apps/%{name}.png

%changelog
* Sat Apr 26 2025 Dmitry Sorokin <dim15168250@yandex.ru>
- Version 3.1.3
- new: improved genre layout when showing in channels
- new: add an option to only allow social login with existing account
- new: ask for confirmation on page leave when there are changes in settings page
- fix: lazy loading more tracks in history page not working
- fix: tracks not lazy loading on clicking next button, only when playback ends
- fix: landing page settings sometimes not saving in appearance editor
- fix: album page seo data
- fix: account settings link in OTP code email
- fix: show thumbnail for large image when cdn url is specified
- fix: incorrect owner sometimes showing in admin > files

