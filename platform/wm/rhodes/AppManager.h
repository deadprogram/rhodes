#pragma once

#ifdef ENABLE_DYNAMIC_RHOBUNDLE
class CAppManager
{
public:
	CAppManager(void);
	~CAppManager(void);

	/**
	 * @param szUrl - url of the zip file with rhobundle
	 * @param szZipPassword - zip password if required
	 */
	static void ReloadRhoBundle(HWND hwnd, const char* szUrl, const char* szZipPassword);
	static bool RemoveFolder(LPCTSTR szPath);
	static bool RestartClient(HWND hwnd);
};

#endif